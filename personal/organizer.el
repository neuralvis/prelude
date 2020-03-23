(require 'org)

;; some options for document structure
(setq org-startup-indented t)
(setq org-catch-invisible-edits 'show)

;; the following is for setting up capture mode
;; Let's setup the default org directory
(setq org-directory "~/develop/orgnotes/")
;; also - tell org where to put captured notes
(setq org-default-notes-file (concat org-directory "/notes.org"))
;; bind a key for org-capture
(global-set-key (kbd "C-c c") 'org-capture)

;; now let's setup some capture templates
(defvar my/org-tasks-file "~/develop/orgnotes/tasks.org")
(defvar my/org-bookmark-file "~/develop/orgnotes/bookmarks.org")
(defvar my/org-journal-file "~/develop/orgnotes/journal.org")

(setq org-capture-templates
      '(("l" "Templates for adding links")
        ("lp" "Programming" entry (file+headline my/org-bookmark-file "Programming")
         "* [[%:link][%:description]] \n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n%?Captured: %U\n")
        ("ld" "Deeplearning" entry (file+headline my/org-bookmark-file "Deeplearning")
         "* [[%:link][%:description]] \n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n%?Captured: %U\n")
        ("le" "Emacs" entry (file+headline my/org-bookmark-file "Emacs")
         "* [[%:link][%:description]] \n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n%?Captured: %U\n")
        ("lv" "Visualization" entry (file+headline my/org-bookmark-file "Visualization")
         "* [[%:link][%:description]] \n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n%?Captured: %U\n")
        ("lg" "Graphics" entry (file+headline my/org-bookmark-file "3D Graphics")
         "* [[%:link][%:description]] \n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n%?Captured: %U\n")
        ("lc" "Photography" entry (file+headline my/org-bookmark-file "Photography")
         "* [[%:link][%:description]] \n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n%?Captured: %U\n")
        ("li" "Inbox" entry (file+headline my/org-bookmark-file "Inbox")
         "* [[%:link][%:description]] \n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n%?Captured: %U\n")

        ("n" "Note" entry (file org-default-notes-file)
         "* %^{Note}\n")
        ("t" "Personal Task" entry (file+headline my/org-tasks-file "Personal")
         "* TODO %?\n  %i\n  %a")
        ("w" "Work Task" entry (file+headline my/org-tasks-file "Work")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+olp+datetree my/org-journal-file)
         "* %?\nEntered on %U\n  %i\n  %a")))


;; I am not sure what these do, but I'd like to
;; keep them in for now

;; (setq org-todo-keywords
;;  '((sequence
;;     "TODO(t)"  ; next action
;;     "TOBLOG(b)"  ; next action
;;     "STARTED(s)"
;;     "WAITING(w@/!)"
;;     "POSTPONED(p)" "SOMEDAY(s@/!)" "|" "DONE(x!)" "CANCELLED(c@)")
;;    (sequence "TODELEGATE(-)" "DELEGATED(d)" "COMPLETE(x)")))
;; (setq org-log-into-drawer t)
;; (setq org-clock-into-drawer t)
