(pcase system-type
  ;; GNU/Linux or WSL
  (gnu/linux
   (message "This is GNU/Linux"))

  ;; macOS
  (darwin
    (message "This is macOS")
    (defun copy-from-osx ()
      (shell-command-to-string "pbpaste"))

    (defun paste-to-osx (text &optional push)
      (let ((process-connection-type nil))
        (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
          (process-send-string proc text)
          (process-send-eof proc))))

    (setq interprogram-cut-function 'paste-to-osx)
    (setq interprogram-paste-function 'copy-from-osx)
   )
  
  ;; Windows
  (windows-nt
   (message "This is Windows")) 

  ;; BSDs
  (berkeley-unix
   (message "This is a BSD"))

  ;; Other operating system
  (_
   (message "Unknown operating system"))
 )
