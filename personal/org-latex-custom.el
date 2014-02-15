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
"\\documentclass{tufte-book}\n
\\usepackage{color}
\\usepackage{amssymb}
\\usepackage{gensymb}
\\usepackage{nicefrac}
\\usepackage{units}"
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
