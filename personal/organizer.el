(straight-use-package 'ox-rst)
(require 'ox-rst)
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
(defvar my/org-work-tasks "~/develop/orgnotes/work-tasks.org")
(defvar my/org-personal-tasks "~/develop/orgnotes/personal-tasks.org")

(defvar my/org-bookmark-file "~/develop/orgnotes/bookmarks.org")
(defvar my/org-personal-journal "~/develop/orgnotes/personal-journal.org")
(defvar my/org-work-journal "~/develop/orgnotes/work-journal.org")

(setq org-capture-templates
      '(("j" "Add a journal entry...")
        ("jw" "Work" entry (file+olp+datetree my/org-work-journal)
         "* %?\nEntered on %U\n")
        ("jp" "Personal" entry (file+olp+datetree my/org-personal-journal)
         "* %?\nEntered on %U\n")

        ("l" "Add a bookmark...")
        ("lp" "Programming" entry (file+headline my/org-bookmark-file "Programming")
         "* [[%:link][%:description]] \n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n%?Captured: %U \n\n")
        ("ld" "Deeplearning" entry (file+headline my/org-bookmark-file "Deeplearning")
         "* [[%:link][%:description]] \n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n%?Captured: %U \n\n")
        ("le" "Emacs" entry (file+headline my/org-bookmark-file "Emacs")
         "* [[%:link][%:description]] \n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n%?Captured: %U \n\n")
        ("lv" "Visualization" entry (file+headline my/org-bookmark-file "Visualization")
         "* [[%:link][%:description]] \n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n%?Captured: %U \n\n")
        ("lg" "Graphics" entry (file+headline my/org-bookmark-file "3D Graphics")
         "* [[%:link][%:description]] \n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n%?Captured: %U \n\n")
        ("lc" "Photography" entry (file+headline my/org-bookmark-file "Photography")
         "* [[%:link][%:description]] \n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n%?Captured: %U \n\n")
        ("li" "Inbox" entry (file+headline my/org-bookmark-file "Inbox")
         "* [[%:link][%:description]] \n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n%?Captured: %U \n\n")
        ("lw" "Work" entry (file+headline my/org-bookmark-file "Work")
         "* [[%:link][%:description]] \n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n%?Captured: %U \n\n")

        ("n" "Note" entry (file org-default-notes-file)
         "* %^{Note}\n")

        ("t" "Add a task...")
        ("tp" "Personal Task" entry (file my/org-personal-tasks)
         "* TODO %?\n  %i\n  %a")
        ("tw" "Work Task" entry (file my/org-work-tasks)
         "* TODO %?\n  %i\n  %a")))

(org-reload)

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
