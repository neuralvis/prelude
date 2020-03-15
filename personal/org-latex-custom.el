;; My custom LaTeX class for Org-mode export. require is needed for it to work.
(require 'ox-latex)

(add-to-list 'org-latex-classes
             '("fu-org-article"
"\\documentclass[11pt,a4paper]{article}
\\usepackage[T1]{fontenc}
\\usepackage{xunicode}        % for XeTex
\\usepackage{fontspec}        % for XeTex
\\usepackage{xltxtra}         % for XeTex
\\usepackage{url}             % for XeTex to break long URLs at line ending
\\usepackage[english]{babel}  % for XeTex
\\usepackage[osf]{libertine}  % Libertine fonts with old-style numbers
\\usepackage{graphicx}
\\usepackage{minted}
\\usepackage{hypernat}
\\usepackage[round]{natbib}

\\usepackage{paralist}
\\let\\itemize\\compactitem
\\let\\description\\compactdesc
\\let\\enumerate\\compactenum

\\usepackage[a4paper, textheight=10in,
            marginparsep=7pt, marginparwidth=.6in]{geometry}

\\usepackage[colorlinks=true,urlcolor=black,linkcolor=black,citecolor=blue]{hyperref}

\\let\\nofiles\\relax % Void the \\nofiles command

\\pagestyle{plain}
\\title{}
      [NO-DEFAULT-PACKAGES]
      [NO-PACKAGES]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")
               )
             )

;; tufte-book class for writing classy books
(require 'ox-latex)
(add-to-list 'org-latex-classes
'("tuftebook"
"\\documentclass{tufte-book}
\\usepackage{color}
\\usepackage{amssymb}
\\usepackage{gensymb}
\\usepackage{nicefrac}
\\usepackage{microtype}
\\usepackage{units}"
("\\chapter{%s}" . "\\chapter*{%s}")
("\\section{%s}" . "\\section*{%s}")
("\\subsection{%s}" . "\\subsection*{%s}")
("\\paragraph{%s}" . "\\paragraph*{%s}")
("\\subparagraph{%s}" . "\\subparagraph*{%s}")))


;; tufte-handout class for writing classy handouts and papers
(require 'ox-latex)
(add-to-list 'org-latex-classes
'("tuftehandout"
"\\documentclass{tufte-handout}
\\usepackage{color}
\\usepackage{amssymb}
\\usepackage{amsmath}
\\usepackage{gensymb}
\\usepackage{nicefrac}
\\usepackage{units}"
("\\section{%s}" . "\\section*{%s}")
("\\subsection{%s}" . "\\subsection*{%s}")
("\\paragraph{%s}" . "\\paragraph*{%s}")
("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(setq org-src-fontify-natively t)

;; MADHU: Taken from http://joat-programmer.blogspot.com/2013/07/org-mode-version-8-and-pdf-export-with.html
;; Include the latex-exporter
(require 'ox-latex)
;; Add minted to the defaults packages to include when exporting.
(add-to-list 'org-latex-packages-alist '("" "minted"))
;; Tell the latex export to use the minted package for source
;; code coloration.
(setq org-latex-listings 'minted)
;; Let the exporter use the -shell-escape option to let latex
;; execute external programs.
;; This obviously and can be dangerous to activate!
(setq org-latex-pdf-process
     '("xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
;; (setq org-latex-pdf-process
;;       '("latexmk -shell-escape -interaction=nonstopmode -pdf -f %f"))
