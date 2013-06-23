(add-to-list 'load-path "~/.emacs.d/addons.gt/nxhtml")
(load "~/.emacs.d/addons.gt/nxhtml/autostart.el")

(require 'web-autoload)

(when (and (= emacs-major-version 24)
           (>= emacs-minor-version 2))
  (eval-after-load "mumamo"
    '(setq mumamo-per-buffer-local-vars
           (delq 'buffer-file-name mumamo-per-buffer-local-vars))))

;;(setq mumamo-background-colors nil)
(setq nxml-child-indent 4)  ;; work convention is 4 spaces for HTML, etc
(setq nxml-outline-child-indent 4)
(setq mumamo-submode-indent-offset 4)
(setq sgml-basic-offset 4)
