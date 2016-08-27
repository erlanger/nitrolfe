(defrecord  page_context series_id  module  (entry_point 'main) path_info  (async_mode 'comet))
(defmacro npage_context args `(make-page_context ,@args))

(defrecord  event_context module  tag  type  anchor  validation_group  handle_invalid )
(defmacro nevent_context args `(make-event_context ,@args))

(defrecord  handler_context name  module  config  state )
(defmacro nhandler_context args `(make-handler_context ,@args))

(defrecord  context type  bridge  (anchor 'undefined) (data ()) (encoding 'auto) (action_queue 'undefined) page_context  event_context  handler_list )
(defmacro ncontext args `(make-context ,@args))

(defrecord  elementbase (is_element 'is_element) (module 'undefined) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()))
(defmacro nelementbase args `(make-elementbase ,@args))

(defrecord  template (is_element 'is_element) (module 'element_template) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) file  (module_aliases ()) (bindings ()))
(defmacro ntemplate args `(make-template ,@args))

(defrecord  function_el (is_element 'is_element) (module 'element_function) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (function (lambda () ())))
(defmacro nfunction_el args `(make-function_el ,@args))

(defrecord  body (is_element 'is_element) (module 'element_body) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()))
(defmacro nbody args `(make-body ,@args))

(defrecord  h (is_element 'is_element) (module 'element_h) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (body ()) (html_encode 'true) (size 'undefined))
(defmacro nh args `(make-h ,@args))

(defrecord  h1 (is_element 'is_element) (module 'element_h) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (body ()) (html_encode 'true) (size 1))
(defmacro nh1 args `(make-h1 ,@args))

(defrecord  h2 (is_element 'is_element) (module 'element_h) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (body ()) (html_encode 'true) (size 2))
(defmacro nh2 args `(make-h2 ,@args))

(defrecord  h3 (is_element 'is_element) (module 'element_h) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (body ()) (html_encode 'true) (size 3))
(defmacro nh3 args `(make-h3 ,@args))

(defrecord  h4 (is_element 'is_element) (module 'element_h) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (body ()) (html_encode 'true) (size 4))
(defmacro nh4 args `(make-h4 ,@args))

(defrecord  h5 (is_element 'is_element) (module 'element_h) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (body ()) (html_encode 'true) (size 5))
(defmacro nh5 args `(make-h5 ,@args))

(defrecord  h6 (is_element 'is_element) (module 'element_h) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (body ()) (html_encode 'true) (size 6))
(defmacro nh6 args `(make-h6 ,@args))

(defrecord  list (is_element 'is_element) (module 'element_list) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (numbered 'false) (body ()))
(defmacro nlist args `(make-list ,@args))

(defrecord  listitem (is_element 'is_element) (module 'element_listitem) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (text ()) (html_encode 'true) (role ()))
(defmacro nlistitem args `(make-listitem ,@args))

(defrecord  br (is_element 'is_element) (module 'element_br) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()))
(defmacro nbr args `(make-br ,@args))

(defrecord  hr (is_element 'is_element) (module 'element_hr) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()))
(defmacro nhr args `(make-hr ,@args))

(defrecord  p (is_element 'is_element) (module 'element_p) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (text ()) (html_encode 'true))
(defmacro np args `(make-p ,@args))

(defrecord  label (is_element 'is_element) (module 'element_label) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (text ()) (html_encode 'true) (for ()))
(defmacro nlabel args `(make-label ,@args))

(defrecord  pre (is_element 'is_element) (module 'element_pre) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (html_encode 'true))
(defmacro npre args `(make-pre ,@args))

(defrecord  strong (is_element 'is_element) (module 'element_strong) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (text ()) (html_encode 'true))
(defmacro nstrong args `(make-strong ,@args))

(defrecord  em (is_element 'is_element) (module 'element_em) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (text ()) (html_encode 'true))
(defmacro nem args `(make-em ,@args))

(defrecord  value (is_element 'is_element) (module 'element_value) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (html_encode 'true))
(defmacro nvalue args `(make-value ,@args))

(defrecord  link (is_element 'is_element) (module 'element_link) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (body ()) (image 'undefined) (new 'false) (html_encode 'true) (mobile_target 'false) (mobile_dialog 'false) (url "javascript:") click  postback  (handle_invalid 'false) on_invalid  delegate )
(defmacro nlink args `(make-link ,@args))

(defrecord  email_link (is_element 'is_element) (module 'element_email_link) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (body ()) (html_encode 'true) (email ()))
(defmacro nemail_link args `(make-email_link ,@args))

(defrecord  error (is_element 'is_element) (module 'element_error) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (html_encode 'true))
(defmacro nerror args `(make-error ,@args))

(defrecord  span (is_element 'is_element) (module 'element_span) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (text ()) (html_encode 'true))
(defmacro nspan args `(make-span ,@args))

(defrecord  button (is_element 'is_element) (module 'element_button) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (body ()) (image 'undefined) (html_encode 'true) next  click  (enter_clicks ()) postback  (disabled 'false) (handle_invalid 'false) on_invalid  delegate )
(defmacro nbutton args `(make-button ,@args))

(defrecord  literal (is_element 'is_element) (module 'element_literal) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (html_encode 'true))
(defmacro nliteral args `(make-literal ,@args))

(defrecord  textbox (is_element 'is_element) (module 'element_textbox) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (maxlength ()) (size ()) (placeholder ()) (html_encode 'true) (disabled 'false) (readonly 'false) next  postback  (handle_invalid 'false) on_invalid  delegate  html_name  (type 'text))
(defmacro ntextbox args `(make-textbox ,@args))

(defrecord  datepicker_textbox (is_element 'is_element) (module 'element_datepicker_textbox) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (maxlength ()) (size ()) (placeholder ()) (html_encode 'true) (readonly 'false) (disabled 'false) next  (handle_invalid 'false) on_invalid  html_name  (validators ()) (options (#(dateFormat "yy-mm-dd"))))
(defmacro ndatepicker_textbox args `(make-datepicker_textbox ,@args))

(defrecord  textbox_autocomplete (is_element 'is_element) (module 'element_textbox_autocomplete) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) tag  (text ()) (minLength 2) (size ()) (html_encode 'true) (placeholder ()) (disabled 'false) (readonly 'false) (delay 300) next  postback  (handle_invalid 'false) on_invalid  delegate )
(defmacro ntextbox_autocomplete args `(make-textbox_autocomplete ,@args))

(defrecord  hidden (is_element 'is_element) (module 'element_hidden) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (html_encode 'true) html_name  (disabled 'false))
(defmacro nhidden args `(make-hidden ,@args))

(defrecord  textarea (is_element 'is_element) (module 'element_textarea) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (placeholder ()) (disabled 'false) (readonly 'false) (trap_tabs 'false) next  columns  rows  (html_encode 'true) html_name )
(defmacro ntextarea args `(make-textarea ,@args))

(defrecord  range (is_element 'is_element) (module 'element_range) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (min 0) (max 100) (step 1) (value 0) next  postback  (handle_invalid 'false) on_invalid  delegate )
(defmacro nrange args `(make-range ,@args))

(defrecord  option (text ()) (value 'undefined) selected  (show_if 'true) (disabled 'false))
(defmacro noption args `(make-option ,@args))

(defrecord  option_group (text ()) (options ()) (show_if 'true) (disabled 'false))
(defmacro noption_group args `(make-option_group ,@args))

(defrecord  dropdown (is_element 'is_element) (module 'element_dropdown) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (options ()) (size 'auto) (html_encode 'true) postback  (handle_invalid 'false) on_invalid  delegate  value  next  (multiple 'false) (disabled 'false) html_name )
(defmacro ndropdown args `(make-dropdown ,@args))

(defrecord  checkbox (is_element 'is_element) (module 'element_checkbox) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (label_position 'after) (html_encode 'true) (checked 'false) (value "on") next  postback  (handle_invalid 'false) (disabled 'false) on_invalid  delegate  html_name )
(defmacro ncheckbox args `(make-checkbox ,@args))

(defrecord  radiogroup (is_element 'is_element) (module 'element_radiogroup) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()))
(defmacro nradiogroup args `(make-radiogroup ,@args))

(defrecord  radio (is_element 'is_element) (module 'element_radio) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (text ()) (html_encode 'true) value  next  name  (checked 'false) postback  (handle_invalid 'false) on_invalid  delegate  html_name )
(defmacro nradio args `(make-radio ,@args))

(defrecord  password (is_element 'is_element) (module 'element_password) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (maxlength ()) (size ()) (placeholder ()) (html_encode 'true) (disabled 'false) (readonly 'false) next  postback  (handle_invalid 'false) on_invalid  delegate  html_name )
(defmacro npassword args `(make-password ,@args))

(defrecord  restful_form (is_element 'is_element) (module 'element_restful_form) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (method "POST") action  html_name  target  enctype  (body ()))
(defmacro nrestful_form args `(make-restful_form ,@args))

(defrecord  restful_submit (is_element 'is_element) (module 'element_restful_submit) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text "Submit") (body ()) (html_encode 'true) html_name )
(defmacro nrestful_submit args `(make-restful_submit ,@args))

(defrecord  restful_reset (is_element 'is_element) (module 'element_restful_reset) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text "Cancel") (html_encode 'true) html_name )
(defmacro nrestful_reset args `(make-restful_reset ,@args))

(defrecord  restful_upload (is_element 'is_element) (module 'element_restful_upload) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (html_encode 'true) html_name )
(defmacro nrestful_upload args `(make-restful_upload ,@args))

(defrecord  panel (is_element 'is_element) (module 'element_panel) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (text ()) (html_encode 'true))
(defmacro npanel args `(make-panel ,@args))

(defrecord  sync_panel (is_element 'is_element) (module 'element_sync_panel) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) body_fun  (triggers ()) (pool 'sync_panel))
(defmacro nsync_panel args `(make-sync_panel ,@args))

(defrecord  fieldset (is_element 'is_element) (module 'element_fieldset) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (text ()) (html_encode 'true) (legend_body ()) (legend_text ()) (legend_html_encode 'true))
(defmacro nfieldset args `(make-fieldset ,@args))

(defrecord  spinner (is_element 'is_element) (module 'element_spinner) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (image "/nitrogen/spinner.gif"))
(defmacro nspinner args `(make-spinner ,@args))

(defrecord  image (is_element 'is_element) (module 'element_image) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (image ()) alt  width  height )
(defmacro nimage args `(make-image ,@args))

(defrecord  lightbox (is_element 'is_element) (module 'element_lightbox) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()))
(defmacro nlightbox args `(make-lightbox ,@args))

(defrecord  table (is_element 'is_element) (module 'element_table) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) rows  (border 0) (header ()) (footer ()))
(defmacro ntable args `(make-table ,@args))

(defrecord  tablerow (is_element 'is_element) (module 'element_tablerow) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) cells )
(defmacro ntablerow args `(make-tablerow ,@args))

(defrecord  tableheader (is_element 'is_element) (module 'element_tableheader) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (html_encode 'true) (body ()) (align "left") (valign "middle") (colspan 1) (rowspan 1))
(defmacro ntableheader args `(make-tableheader ,@args))

(defrecord  tablecell (is_element 'is_element) (module 'element_tablecell) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (html_encode 'true) (body ()) (align "left") (valign "middle") (colspan 1) (rowspan 1))
(defmacro ntablecell args `(make-tablecell ,@args))

(defrecord  singlerow (is_element 'is_element) (module 'element_singlerow) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) cells )
(defmacro nsinglerow args `(make-singlerow ,@args))

(defrecord  file (is_element 'is_element) (module 'element_file) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) file  (include_panel 'true) (html_encode 'false))
(defmacro nfile args `(make-file ,@args))

(defrecord  flash (is_element 'is_element) (module 'element_flash) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()))
(defmacro nflash args `(make-flash ,@args))

(defrecord  placeholder (is_element 'is_element) (module 'element_placeholder) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()))
(defmacro nplaceholder args `(make-placeholder ,@args))

(defrecord  bind (is_element 'is_element) (module 'element_bind) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (data ()) (map ()) transform  (acc ()) (body ()) (empty_body ()))
(defmacro nbind args `(make-bind ,@args))

(defrecord  sortblock (is_element 'is_element) (module 'element_sortblock) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) tag  (items ()) group  (connect_with_groups 'none) handle  (placeholder ()) (force_placeholder_size 'false) delegate )
(defmacro nsortblock args `(make-sortblock ,@args))

(defrecord  sortitem (is_element 'is_element) (module 'element_sortitem) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) tag  (body ()))
(defmacro nsortitem args `(make-sortitem ,@args))

(defrecord  draggable (is_element 'is_element) (module 'element_draggable) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) tag  (body ()) group  handle  (clone 'true) (revert 'true) (scroll 'true) container  zindex  (distance 3) (options ()))
(defmacro ndraggable args `(make-draggable ,@args))

(defrecord  droppable (is_element 'is_element) (module 'element_droppable) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) tag  (body ()) (accept_groups 'all) (active_class 'active) (hover_class 'hover) delegate )
(defmacro ndroppable args `(make-droppable ,@args))

(defrecord  gravatar (is_element 'is_element) (module 'element_gravatar) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (email ()) (size "80") (rating "g") (default ()))
(defmacro ngravatar args `(make-gravatar ,@args))

(defrecord  inplace_textarea (is_element 'is_element) (module 'element_inplace_textarea) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) tag  (text ()) (html_encode 'true) (start_mode 'view) (validators ()) delegate )
(defmacro ninplace_textarea args `(make-inplace_textarea ,@args))

(defrecord  inplace_textbox (is_element 'is_element) (module 'element_inplace_textbox) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) tag  (text ()) (html_encode 'true) (start_mode 'view) (validators ()) delegate )
(defmacro ninplace_textbox args `(make-inplace_textbox ,@args))

(defrecord  inplace (is_element 'is_element) (module 'element_inplace) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) tag  (text ()) delegate  view  edit  (start_mode 'view))
(defmacro ninplace args `(make-inplace ,@args))

(defrecord  upload (is_element 'is_element) (module 'element_upload) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) delegate  tag  (show_button 'true) (file_text "Select file") (button_text "Upload") (droppable 'false) (droppable_text "Drop Files Here") (multiple 'false) (overall_progress 'auto))
(defmacro nupload args `(make-upload ,@args))

(defrecord  wizard (is_element 'is_element) (module 'element_wizard) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) tag  titles  steps  (next "Next") (back "Back") (finish "Finish") (show_progress 'true) (progress_text "(Step ~p of ~p)"))
(defmacro nwizard args `(make-wizard ,@args))

(defrecord  sparkline (is_element 'is_element) (module 'element_sparkline) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'line) (values ()) (options ()))
(defmacro nsparkline args `(make-sparkline ,@args))

(defrecord  recaptcha (is_element 'is_element) (module 'element_recaptcha) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (captcha_opts ()) button_id  (button_label "Check!") button_class  delegate  tag  (fail_body "Please try again!") public_key  private_key  challenge_url  verify_url )
(defmacro nrecaptcha args `(make-recaptcha ,@args))

(defrecord  mobile_list (is_element 'is_element) (module 'element_mobile_list) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) theme  (inset 'true))
(defmacro nmobile_list args `(make-mobile_list ,@args))

(defrecord  mobile_list_divider (is_element 'is_element) (module 'element_mobile_list_divider) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) theme  (text ()) (body ()) (role 'heading))
(defmacro nmobile_list_divider args `(make-mobile_list_divider ,@args))

(defrecord  mobile_listitem (is_element 'is_element) (module 'element_mobile_listitem) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (body ()) (theme ()))
(defmacro nmobile_listitem args `(make-mobile_listitem ,@args))

(defrecord  mobile_toggle (is_element 'is_element) (module 'element_mobile_toggle) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (on_text "On") (on_value "on") (off_text "Off") (off_value "off") (selected "on") postback  (handle_invalid 'false) on_invalid  delegate  width  (theme ()))
(defmacro nmobile_toggle args `(make-mobile_toggle ,@args))

(defrecord  mobile_collapsible (is_element 'is_element) (module 'element_mobile_collapsible) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) header_theme  content_theme  (header_text ()) (content_body ()) (content_text ()) (header_size 3) (mini 'false) (collapsed 'true))
(defmacro nmobile_collapsible args `(make-mobile_collapsible ,@args))

(defrecord  mobile_collapsible_set (is_element 'is_element) (module 'element_mobile_collapsible_set) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) header_theme  content_theme  (mini 'false) (body ()))
(defmacro nmobile_collapsible_set args `(make-mobile_collapsible_set ,@args))

(defrecord  mobile_grid_block (is_element 'is_element) (module 'element_mobile_grid_block) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (text ()) (body ()) (new_row 'default))
(defmacro nmobile_grid_block args `(make-mobile_grid_block ,@args))

(defrecord  mobile_grid (is_element 'is_element) (module 'element_mobile_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (columns 2) (blocks ()))
(defmacro nmobile_grid args `(make-mobile_grid ,@args))

(defrecord  mobile_panel (is_element 'is_element) (module 'element_mobile_panel) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (mini 'false) (position 'left) (dismissible 'true) theme  (display_mode 'reveal) (body ()))
(defmacro nmobile_panel args `(make-mobile_panel ,@args))

(defrecord  iframe (is_element 'is_element) (module 'element_iframe) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) align  frameborder  height  name  sandbox  seamless  src  srcdoc  width  allowfullscreen )
(defmacro niframe args `(make-iframe ,@args))

(defrecord  section (is_element 'is_element) (module 'element_section) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (role ()))
(defmacro nsection args `(make-section ,@args))

(defrecord  nav (is_element 'is_element) (module 'element_nav) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (role ()))
(defmacro nnav args `(make-nav ,@args))

(defrecord  article (is_element 'is_element) (module 'element_article) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (role ()))
(defmacro narticle args `(make-article ,@args))

(defrecord  aside (is_element 'is_element) (module 'element_aside) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (role ()))
(defmacro naside args `(make-aside ,@args))

(defrecord  html5_header (is_element 'is_element) (module 'element_html5_header) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (role ()))
(defmacro nhtml5_header args `(make-html5_header ,@args))

(defrecord  html5_footer (is_element 'is_element) (module 'element_html5_footer) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (role ()))
(defmacro nhtml5_footer args `(make-html5_footer ,@args))

(defrecord  time (is_element 'is_element) (module 'element_time) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (datetime ()) (body ()) (text ()) (html_encode 'true) (role ()))
(defmacro ntime args `(make-time ,@args))

(defrecord  mark (is_element 'is_element) (module 'element_mark) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (text ()) (html_encode 'true) (role ()))
(defmacro nmark args `(make-mark ,@args))

(defrecord  main (is_element 'is_element) (module 'element_main) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (body ()) (role ()))
(defmacro nmain args `(make-main ,@args))

(defrecord  grid (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'undefined) (columns 'undefined) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid args `(make-grid ,@args))

(defrecord  container_12 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'container) (columns 12) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ncontainer_12 args `(make-container_12 ,@args))

(defrecord  container_16 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'container) (columns 16) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ncontainer_16 args `(make-container_16 ,@args))

(defrecord  grid_1 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 1) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_1 args `(make-grid_1 ,@args))

(defrecord  grid_2 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 2) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_2 args `(make-grid_2 ,@args))

(defrecord  grid_3 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 3) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_3 args `(make-grid_3 ,@args))

(defrecord  grid_4 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 4) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_4 args `(make-grid_4 ,@args))

(defrecord  grid_5 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 5) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_5 args `(make-grid_5 ,@args))

(defrecord  grid_6 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 6) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_6 args `(make-grid_6 ,@args))

(defrecord  grid_7 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 7) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_7 args `(make-grid_7 ,@args))

(defrecord  grid_8 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 8) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_8 args `(make-grid_8 ,@args))

(defrecord  grid_9 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 9) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_9 args `(make-grid_9 ,@args))

(defrecord  grid_10 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 10) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_10 args `(make-grid_10 ,@args))

(defrecord  grid_11 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 11) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_11 args `(make-grid_11 ,@args))

(defrecord  grid_12 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 12) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_12 args `(make-grid_12 ,@args))

(defrecord  grid_13 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 13) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_13 args `(make-grid_13 ,@args))

(defrecord  grid_14 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 14) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_14 args `(make-grid_14 ,@args))

(defrecord  grid_15 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 15) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_15 args `(make-grid_15 ,@args))

(defrecord  grid_16 (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'grid) (columns 16) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_16 args `(make-grid_16 ,@args))

(defrecord  grid_clear (is_element 'is_element) (module 'element_grid) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'clear) (columns 'undefined) (alpha 'false) (omega 'false) push  pull  prefix  suffix  (body ()))
(defmacro ngrid_clear args `(make-grid_clear ,@args))

(defrecord  progress_bar (is_element 'is_element) (module 'element_progress_bar) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (value 'undefined) (max 100) (color #"909090") label )
(defmacro nprogress_bar args `(make-progress_bar ,@args))

(defrecord  chart_axis position  labels  (color #"909090") (font_size 10))
(defmacro nchart_axis args `(make-chart_axis ,@args))

(defrecord  chart_data color  legend  values  (min_value 0) (max_value 100) (line_width 1) (line_length 1) (blank_length 0))
(defmacro nchart_data args `(make-chart_data ,@args))

(defrecord  google_chart (is_element 'is_element) (module 'element_google_chart) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (type 'line) (color #"909090") (font_size 10) (width 300) (height 150) (axes ()) (data ()) (grid_x 'undefined) (grid_y 'undefined) (grid_line_length 1) (grid_blank_length 5) (background_color 'ffffff) (chart_color 'ffffff) (legend_location 'bottom) (bar_space 3) (bar_group_space 7))
(defmacro ngoogle_chart args `(make-google_chart ,@args))

(defrecord  qr (is_element 'is_element) (module 'element_qr) id  anchor  actions  (show_if 'true) (class ()) (style ()) (html_id ()) (title ()) (data_fields ()) (data 'undefined) (size 200))
(defmacro nqr args `(make-qr ,@args))

(defrecord  actionbase (is_action 'is_action) (module 'undefined) anchor  trigger  target  actions  (show_if 'true) dependency_js )
(defmacro nactionbase args `(make-actionbase ,@args))

(defrecord  wire (is_action 'is_action) (module 'action_wire) anchor  trigger  target  actions  (show_if 'true) dependency_js )
(defmacro nwire args `(make-wire ,@args))

(defrecord  click (is_action 'is_action) (module 'action_click) anchor  trigger  target  actions  (show_if 'true) dependency_js )
(defmacro nclick args `(make-click ,@args))

(defrecord  update (is_action 'is_action) (module 'action_update) anchor  trigger  target  actions  (show_if 'true) dependency_js  (type 'update) (elements ()))
(defmacro nupdate args `(make-update ,@args))

(defrecord  replace (is_action 'is_action) (module 'action_update) anchor  trigger  target  actions  (show_if 'true) dependency_js  (type 'replace) (elements ()))
(defmacro nreplace args `(make-replace ,@args))

(defrecord  insert_top (is_action 'is_action) (module 'action_update) anchor  trigger  target  actions  (show_if 'true) dependency_js  (type 'insert_top) (elements ()))
(defmacro ninsert_top args `(make-insert_top ,@args))

(defrecord  insert_bottom (is_action 'is_action) (module 'action_update) anchor  trigger  target  actions  (show_if 'true) dependency_js  (type 'insert_bottom) (elements ()))
(defmacro ninsert_bottom args `(make-insert_bottom ,@args))

(defrecord  insert_before (is_action 'is_action) (module 'action_update) anchor  trigger  target  actions  (show_if 'true) dependency_js  (type 'insert_before) (elements ()))
(defmacro ninsert_before args `(make-insert_before ,@args))

(defrecord  insert_after (is_action 'is_action) (module 'action_update) anchor  trigger  target  actions  (show_if 'true) dependency_js  (type 'insert_after) (elements ()))
(defmacro ninsert_after args `(make-insert_after ,@args))

(defrecord  remove (is_action 'is_action) (module 'action_update) anchor  trigger  target  actions  (show_if 'true) dependency_js  (type 'remove) (elements ()))
(defmacro nremove args `(make-remove ,@args))

(defrecord  comet (is_action 'is_action) (module 'action_comet) anchor  trigger  target  actions  (show_if 'true) dependency_js  (pool 'undefined) (scope 'local) function  dying_message  reconnect_actions )
(defmacro ncomet args `(make-comet ,@args))

(defrecord  continue (is_action 'is_action) (module 'action_continue) anchor  trigger  target  actions  (show_if 'true) dependency_js  function  delegate  tag  timeout )
(defmacro ncontinue args `(make-continue ,@args))

(defrecord  api (is_action 'is_action) (module 'action_api) anchor  trigger  target  actions  (show_if 'true) dependency_js  name  tag  delegate )
(defmacro napi args `(make-api ,@args))

(defrecord  function (is_action 'is_action) (module 'action_function) anchor  trigger  target  actions  (show_if 'true) dependency_js  function )
(defmacro nfunction args `(make-function ,@args))

(defrecord  set (is_action 'is_action) (module 'action_set) anchor  trigger  target  actions  (show_if 'true) dependency_js  (value ()))
(defmacro nset args `(make-set ,@args))

(defrecord  set_multiple (is_action 'is_action) (module 'action_set_multiple) anchor  trigger  target  actions  (show_if 'true) dependency_js  (values ()))
(defmacro nset_multiple args `(make-set_multiple ,@args))

(defrecord  redirect (is_action 'is_action) (module 'action_redirect) anchor  trigger  target  actions  (show_if 'true) dependency_js  (url ()) (login 'false))
(defmacro nredirect args `(make-redirect ,@args))

(defrecord  event (is_action 'is_action) (module 'action_event) anchor  trigger  target  actions  (show_if 'true) dependency_js  (type 'default) (keycode 'undefined) (shift_key 'false) (delay 0) postback  (handle_invalid 'false) on_invalid  validation_group  delegate  extra_param )
(defmacro nevent args `(make-event ,@args))

(defrecord  before_postback (is_action 'is_action) (module 'action_before_postback) anchor  trigger  target  actions  (show_if 'true) dependency_js  (script ()))
(defmacro nbefore_postback args `(make-before_postback ,@args))

(defrecord  validate (is_action 'is_action) (module 'action_validate) anchor  trigger  target  actions  (show_if 'true) dependency_js  (on 'submit) (success_text " ") group  validators  attach_to )
(defmacro nvalidate args `(make-validate ,@args))

(defrecord  validation_error (is_action 'is_action) (module 'action_validation_error) anchor  trigger  target  actions  (show_if 'true) dependency_js  (text ()) attach_to )
(defmacro nvalidation_error args `(make-validation_error ,@args))

(defrecord  clear_validation (is_action 'is_action) (module 'action_clear_validation) anchor  trigger  target  actions  (show_if 'true) dependency_js  validation_trigger  validation_target  validation_all )
(defmacro nclear_validation args `(make-clear_validation ,@args))

(defrecord  alert (is_action 'is_action) (module 'action_alert) anchor  trigger  target  actions  (show_if 'true) dependency_js  (text ()))
(defmacro nalert args `(make-alert ,@args))

(defrecord  confirm (is_action 'is_action) (module 'action_confirm) anchor  trigger  target  actions  (show_if 'true) dependency_js  (text ()) postback  delegate )
(defmacro nconfirm args `(make-confirm ,@args))

(defrecord  console_log (is_action 'is_action) (module 'action_console_log) anchor  trigger  target  actions  (show_if 'true) dependency_js  (text ()))
(defmacro nconsole_log args `(make-console_log ,@args))

(defrecord  script (is_action 'is_action) (module 'action_script) anchor  trigger  target  actions  (show_if 'true) dependency_js  script )
(defmacro nscript args `(make-script ,@args))

(defrecord  disable_selection (is_action 'is_action) (module 'action_disable_selection) anchor  trigger  target  actions  (show_if 'true) dependency_js )
(defmacro ndisable_selection args `(make-disable_selection ,@args))

(defrecord  jquery_effect (is_action 'is_action) (module 'action_jquery_effect) anchor  trigger  target  actions  (show_if 'true) dependency_js  type  effect  speed  (options ()) class  easing )
(defmacro njquery_effect args `(make-jquery_effect ,@args))

(defrecord  show (is_action 'is_action) (module 'action_show) anchor  trigger  target  actions  (show_if 'true) dependency_js  (effect 'none) (options ()) (speed 500))
(defmacro nshow args `(make-show ,@args))

(defrecord  hide (is_action 'is_action) (module 'action_hide) anchor  trigger  target  actions  (show_if 'true) dependency_js  (effect 'none) (options ()) (speed 500))
(defmacro nhide args `(make-hide ,@args))

(defrecord  appear (is_action 'is_action) (module 'action_appear) anchor  trigger  target  actions  (show_if 'true) dependency_js  (speed 500))
(defmacro nappear args `(make-appear ,@args))

(defrecord  fade (is_action 'is_action) (module 'action_fade) anchor  trigger  target  actions  (show_if 'true) dependency_js  (speed 500))
(defmacro nfade args `(make-fade ,@args))

(defrecord  slide_down (is_action 'is_action) (module 'action_slide_down) anchor  trigger  target  actions  (show_if 'true) dependency_js  (speed 500))
(defmacro nslide_down args `(make-slide_down ,@args))

(defrecord  slide_up (is_action 'is_action) (module 'action_slide_up) anchor  trigger  target  actions  (show_if 'true) dependency_js  (speed 500))
(defmacro nslide_up args `(make-slide_up ,@args))

(defrecord  effect (is_action 'is_action) (module 'action_effect) anchor  trigger  target  actions  (show_if 'true) dependency_js  (effect 'none) (options ()) (speed 500))
(defmacro neffect args `(make-effect ,@args))

(defrecord  toggle (is_action 'is_action) (module 'action_toggle) anchor  trigger  target  actions  (show_if 'true) dependency_js  (effect 'none) (options ()) (speed 500))
(defmacro ntoggle args `(make-toggle ,@args))

(defrecord  toggle_mobile_panel (is_action 'is_action) (module 'action_toggle_mobile_panel) anchor  trigger  target  actions  (show_if 'true) dependency_js )
(defmacro ntoggle_mobile_panel args `(make-toggle_mobile_panel ,@args))

(defrecord  add_class (is_action 'is_action) (module 'action_add_class) anchor  trigger  target  actions  (show_if 'true) dependency_js  (class 'none) (speed 0))
(defmacro nadd_class args `(make-add_class ,@args))

(defrecord  remove_class (is_action 'is_action) (module 'action_remove_class) anchor  trigger  target  actions  (show_if 'true) dependency_js  (class 'none) (speed 0))
(defmacro nremove_class args `(make-remove_class ,@args))

(defrecord  animate (is_action 'is_action) (module 'action_animate) anchor  trigger  target  actions  (show_if 'true) dependency_js  (options ()) (speed 500) (easing 'swing))
(defmacro nanimate args `(make-animate ,@args))

(defrecord  buttonize (is_action 'is_action) (module 'action_buttonize) anchor  trigger  target  actions  (show_if 'true) dependency_js )
(defmacro nbuttonize args `(make-buttonize ,@args))

(defrecord  disable (is_action 'is_action) (module 'action_disable) anchor  trigger  target  actions  (show_if 'true) dependency_js )
(defmacro ndisable args `(make-disable ,@args))

(defrecord  enable (is_action 'is_action) (module 'action_enable) anchor  trigger  target  actions  (show_if 'true) dependency_js )
(defmacro nenable args `(make-enable ,@args))

(defrecord  make_readonly (is_action 'is_action) (module 'action_make_readonly) anchor  trigger  target  actions  (show_if 'true) dependency_js )
(defmacro nmake_readonly args `(make-make_readonly ,@args))

(defrecord  make_writable (is_action 'is_action) (module 'action_make_writable) anchor  trigger  target  actions  (show_if 'true) dependency_js )
(defmacro nmake_writable args `(make-make_writable ,@args))

(defrecord  set_cookie (is_action 'is_action) (module 'action_set_cookie) anchor  trigger  target  actions  (show_if 'true) dependency_js  cookie  (value ()) (path "/") (minutes_to_live 20))
(defmacro nset_cookie args `(make-set_cookie ,@args))

(defrecord  validatorbase (is_action 'is_action) (module 'undefined) anchor  trigger  target  actions  (show_if 'true) dependency_js  (text "Failed.") attach_to )
(defmacro nvalidatorbase args `(make-validatorbase ,@args))

(defrecord  is_required (is_action 'is_action) (module 'validator_is_required) anchor  trigger  target  actions  (show_if 'true) dependency_js  (text "Failed.") attach_to  unless_has_value )
(defmacro nis_required args `(make-is_required ,@args))

(defrecord  is_email (is_action 'is_action) (module 'validator_is_email) anchor  trigger  target  actions  (show_if 'true) dependency_js  (text "Failed.") attach_to )
(defmacro nis_email args `(make-is_email ,@args))

(defrecord  is_integer (is_action 'is_action) (module 'validator_is_integer) anchor  trigger  target  actions  (show_if 'true) dependency_js  (text "Failed.") attach_to  min  max )
(defmacro nis_integer args `(make-is_integer ,@args))

(defrecord  min_length (is_action 'is_action) (module 'validator_min_length) anchor  trigger  target  actions  (show_if 'true) dependency_js  (text "Failed.") attach_to  length )
(defmacro nmin_length args `(make-min_length ,@args))

(defrecord  max_length (is_action 'is_action) (module 'validator_max_length) anchor  trigger  target  actions  (show_if 'true) dependency_js  (text "Failed.") attach_to  length )
(defmacro nmax_length args `(make-max_length ,@args))

(defrecord  confirm_password (is_action 'is_action) (module 'validator_confirm_password) anchor  trigger  target  actions  (show_if 'true) dependency_js  (text "Failed.") attach_to  password )
(defmacro nconfirm_password args `(make-confirm_password ,@args))

(defrecord  confirm_same (is_action 'is_action) (module 'validator_confirm_same) anchor  trigger  target  actions  (show_if 'true) dependency_js  (text "Failed.") attach_to  confirm_id )
(defmacro nconfirm_same args `(make-confirm_same ,@args))

(defrecord  custom (is_action 'is_action) (module 'validator_custom) anchor  trigger  target  actions  (show_if 'true) dependency_js  (text "Failed.") attach_to  function  tag )
(defmacro ncustom args `(make-custom ,@args))

(defrecord  js_custom (is_action 'is_action) (module 'validator_js_custom) anchor  trigger  target  actions  (show_if 'true) dependency_js  (text "Failed.") attach_to  function  (args "{}") (when_empty 'false))
(defmacro njs_custom args `(make-js_custom ,@args))

