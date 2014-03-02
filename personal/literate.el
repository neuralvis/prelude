;; Picked up from http://wenshanren.org/?p=334

(defun org-insert-src-block (src-code-type src-file-name)
  "Insert a `SRC-CODE-TYPE' type source code block in org-mode."
  (interactive
   (let ((src-code-types
          '("emacs-lisp" "python" "C" "sh" "java" "js" "clojure" "C++" "css"
            "calc" "asymptote" "dot" "gnuplot" "ledger" "lilypond" "mscgen"
            "octave" "oz" "plantuml" "R" "sass" "screen" "sql" "awk" "ditaa"
            "haskell" "latex" "lisp" "matlab" "ocaml" "org" "perl" "ruby" "rust"
            "scheme" "sqlite")))
     (list (ido-completing-read "Source code type: " src-code-types) (read-file-name "Tangle to file: "))))

  (progn
    (newline-and-indent)
    (insert (format "#+BEGIN_SRC %s :tangle %s\n" src-code-type src-file-name))
    (newline-and-indent)
    (insert "#+END_SRC\n")
    (previous-line 2)))

(add-hook 'org-mode-hook '(lambda ()
                            ;; turn on flyspell-mode by default
                            (flyspell-mode 1)
                            ;; C-TAB for expanding
                            (local-set-key (kbd "C-<tab>")
                                           'yas/expand-from-trigger-key)
                            ;; keybinding for editing source code blocks
                            (local-set-key (kbd "C-c c e")
                                           'org-edit-src-code)
                            ;; keybinding for inserting code blocks
                            (local-set-key (kbd "C-c c i")
                                           'org-insert-src-block)
                            ))
