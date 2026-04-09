;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "note"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4paper" "leqno")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("amsmath" "") ("amssymb" "") ("amsthm" "") ("fancyhdr" "") ("graphicx" "") ("tikz" "") ("enumitem" "") ("xcolor" "") ("pgfplots" "") ("imakeidx" "") ("hyperref" "hidelinks")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "introduction"
    "chapters/chapter1/c1"
    "chapters/chapter2/c2"
    "chapters/chapter3/c3"
    "article"
    "art10"
    "inputenc"
    "amsmath"
    "amssymb"
    "amsthm"
    "fancyhdr"
    "graphicx"
    "tikz"
    "enumitem"
    "xcolor"
    "pgfplots"
    "imakeidx"
    "hyperref")
   (TeX-add-symbols
    '("mypic" 3)
    '("red" 1)
    '("blue" 1)
    '("term" 1)
    "R"
    "N"
    "Z"
    "Q"
    "C"
    "ds")
   (LaTeX-add-environments
    '("worddef" 1))
   (LaTeX-add-index-entries
    "#1")
   (LaTeX-add-amsthm-newtheorems
    "theorem"
    "lemma"
    "proposition"
    "corollary"
    "definition"
    "example"
    "remark"
    "axiom"
    "assumption"
    "notation"))
 :latex)

