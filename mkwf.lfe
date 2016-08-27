#! /usr/bin/env lfescript
;; -*- mode: lfe -*-
;;! -smp enable -sname factorial -mnesia debug verbose

(defun main
  ([(list src-path)]
    (main `(,src-path ".")))
  ([(list src-path dest-path)]
    (mk-lfe-wf src-path (filename:join dest-path "wf.lfe")))
  ([_] (usage)))

(defun usage ()
  (lfe_io:format "usage: mkwf <srcpath> [dest-path]\n\n   Convert nitrogen wf.hrl to an lfe version: wf.lfe\n" ()))

  (defun mk-lfe-wf (path fileout)
    (try
      (progn
        (file:write_file fileout
          (fmt "~s"
            (list
              (parse-forms
                (epp:parse_file (filename:join path "wf.hrl") path () )
                () ))))
        (lfe_io:format "~p written.~n" (list fileout)))
      (catch
        ((tuple typ #(error enoent) trace)
          (progn
            (lfe_io:format "Error: wf.hrl not found.~n" ())
            (halt 1))))))


  (defun parse-forms
    ([(tuple ok `(,first . ,rest)) acc]
      (parse-forms first rest acc))
    ([err acc]
      (error err)))

  (defun parse-forms
    ([first `(,second . ,rest) acc]
      (parse-forms second rest
          (parse-form first acc)))
    ([first () acc]
      (parse-form first acc))
    )

  (defun parse-form
    ([`#(attribute ,line record ,rec) acc]
      (parse-record rec acc))
    ([_form acc]
      acc)
  )

  (defun parse-record
    ([`#(,recname ,fields) acc]
      (progn
        (dbg "~n-------------------~nrecord ~p~n   " (list recname))
        (let ([fields-str (parse-fields fields "")])
          (++ acc
              (mk-record-str recname fields-str)
              (io_lib:nl)
              (io_lib:nl))))))

  (defun parse-fields
    ;typed field with default value
    ([`(,`#(typed_record_field ,`#(record_field ,line ,field ,defval) ,type) . ,rest) acc]
      (mk-field-default field defval rest acc))

    ;typed field with no default value
    ([`(,`#(typed_record_field ,`#(record_field ,line ,field) ,type) . ,rest) acc]
      (let ([vfield (term-value field)])
        (dbg "~p " (list vfield))
        (parse-fields rest (++ acc (fmt " ~p " `(,vfield))))))

    ;field with default value
    ([`(,`#(record_field ,line ,field ,defval) . ,rest) acc]
      (mk-field-default field defval rest acc))

    ;field with no default value
    ([`(,`#(record_field ,line ,field) . ,rest) acc]
      (let ([vfield (term-value field)])
        (dbg "~p " (list vfield))
        (parse-fields rest (++ acc (fmt " ~p " `(,vfield))))))

    ;no more fields left
    ([() acc]
      (progn
        (dbg "~s" `,(io_lib:nl))
        acc))
  )

  (defun term-value
    ([`#(atom ,line ,val)]
      val)
    ([`#(string ,line ,val)]
      val)
    ([`#(integer ,line ,val)]
      val)
    ([`#(fun ,line ,`#(clauses ,`(,`#(clause ,line1 () () ,oclauses) . ,rest)))] ;TODO handles only empty fun
      '(lambda () ()))
    ([`#(cons ,line ,val1 ,val2)]
      (cons (term-value val1) (term-value val2)))
    ([`#(tuple ,line ,lst)]
      (list_to_tuple
        (lists:map #'term-value/1 lst)))
    ([`#(bin ,line ,`(,val1 . ,rest))]  ;TODO works only with one binary element
      (term-value val1))
    ([`#(bin_element ,line ,val1 default default)] ;TODO works if val1 is a list/string
      (list_to_binary (term-value val1)))
    ([`#(nil ,line)]
      ()))

  (defun dbg (tmpl lst)
    (if (== 'true (os:getenv "DEBUG"))
      (lfe_io:form tmpl lst)
      ()))

  (defun fmt (tmpl lst)
    (lists:flatten (lfe_io:format1 tmpl lst))
  )

  (defun mk-field-default (field-form defval-form rest acc)
      (let ([vfield (term-value field-form)]
            [vdefval (term-value defval-form)])
        (dbg "~p=~p " (list vfield vdefval))
        (if (== 'atom (element 1 defval-form))
          (parse-fields rest (++ acc (fmt " (~p '~p)" `(,vfield ,vdefval))))
          (parse-fields rest (++ acc (fmt " (~p ~p)" `(,vfield ,vdefval)))))))

(defun mk-record-str (recname fields-str)
  (++
    "(defrecord  "
    (atom_to_list recname)
    fields-str
    ")"
    (io_lib:nl)
    "(defmacro n"
    (atom_to_list recname)
    " args `(make-"
    (atom_to_list recname)
    " ,@args))"
))
