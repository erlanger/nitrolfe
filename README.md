Use Nitrogen in LFE
===================

This script allows you to use the nitrogen web framework with
Lisp-flavored-erlang (LFE). It generates **`wf.lfe`** with all the record
definitions from the nitrogen **`wf.hrl`** file. You can then use those records
within your lfe module to render a web page.

Quick start
===========
1. make sure you have LFE installed (https://github.com/rvirding/lfe)
2. make sure you have nitrogen installed (https://nitrojenproject.com)

If you just want to start using nitrogen code with LFE, just make your regular
nitrogen app, and copy  **`wf.lfe`**  to your include path. Then do a
`(include-lib "<path>/wf.lfe")` in your page module and you are all set.

The **`wf.lfe`**  file was generated with the **`mkwf.lfe`** script present in this
repository. It was generated from nitrogen 2.3.1 (commit dd93cc1). If you have an
earlier/later file you want to use just re-run the script and you'll be all set.
Otherwise just copy the file.

Sample run
===========
* make sure you have LFE installed (https://github.com/rvirding/lfe)

Supposing you have the `wf.hrl` file under the
`./_build/default/lib/nitrogen_core/include` directory. Then you just do:

```bash
$> ./mkwf.lfe ./_build/default/lib/nitrogen_core/include
"./wf.lfe" written.
```
