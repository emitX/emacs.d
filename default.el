;;remap M-x

;;;; this is the emacs config file
(add-to-list 'load-path "~/.emacs.d/addons.el/")
(load-file "~/.emacs.d/addons.el/e-cl-lib.el")
(load-file "~/.emacs.d/addons.el/e-auto-complete.el")
(load-file "~/.emacs.d/addons.el/e-bs.el")
(load-file "~/.emacs.d/addons.el/e-cedet.el")
(load-file "~/.emacs.d/addons.el/e-color-theme.el")
(load-file "~/.emacs.d/addons.el/e-diminish.el")
(load-file "~/.emacs.d/addons.el/e-evil.el")
(load-file "~/.emacs.d/addons.el/e-fff.el")
(load-file "~/.emacs.d/addons.el/e-goto-last-change.el")
(load-file "~/.emacs.d/addons.el/e-highlight-symbol.el")
(load-file "~/.emacs.d/addons.el/e-iswitchb.el")
(load-file "~/.emacs.d/addons.el/e-jabber.el")
(load-file "~/.emacs.d/addons.el/e-magit.el")
(load-file "~/.emacs.d/addons.el/e-mcomplete.el")
(load-file "~/.emacs.d/addons.el/e-shell.el")
(load-file "~/.emacs.d/addons.el/e-sr-speedbar.el")
(load-file "~/.emacs.d/addons.el/e-undo-tree.el")
(load-file "~/.emacs.d/addons.el/e-package.el")
(load-file "~/.emacs.d/addons.el/e-helm.el")
(load-file "~/.emacs.d/addons.el/e-ahs.el")
(load-file "~/.emacs.d/addons.el/e-filecache.el")
(load-file "~/.emacs.d/addons.el/e-anything.el")
(load-file "~/.emacs.d/addons.el/e-org.el")
(load-file "~/.emacs.d/addons.el/e-ido.el")
(load-file "~/.emacs.d/addons.el/e-multi-web-mode.el")
(load-file "~/.emacs.d/addons.el/e-emms.el")
(load-file "~/.emacs.d/addons.el/e-smooth-scroll.el")
(load-file "~/.emacs.d/addons.el/e-cscope.el")
(load-file "~/.emacs.d/addons.el/e-evil.el")
(load-file "~/.emacs.d/addons.el/e-yasnippet.el")
(load-file "~/.emacs.d/addons.el/e-fringe-helper.el")
;;(load-file "~/.emacs.d/addons.el/e-appengine.el")

(if (display-graphic-p) (load-file "~/.emacs.d/addons.el/e-nxhtml.el"))
(if (display-graphic-p) (load-file "~/.emacs.d/addons.el/e-dired+.el"))

;;remap M-x
(define-key global-map (kbd "\C-\\ \C-\\") 'execute-extended-command)
(global-set-key (kbd "C-;") ctl-x-map)

;;(put 'dired-find-alternate-file 'disabled nil)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(setq-default c-basic-offset 4
              tab-width 4)
(setq indent-line-function 'insert-tab)

(setq tab-stop-list 
      '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80
	  84 88 92 96 100 104 108 112 116 120 124))

(funcall (lambda ()
  ;;default variable setup
  ;;this function will call at end of this file
  (setq make-backup-files nil)
  ;;(setq-default tab-width nil)
  (global-auto-revert-mode nil)))

(if (eq system-type "darwin")
    ;;append brew path
    (setq PATH (format "%s:%s" "/usr/local/bin" (getenv "PATH")))
    (setq exec-path (append exec-path '("/usr/local/bin"))))

;;set fullscreen
(set-frame-parameter nil 'fullscreen 'fullboth)

;;; Set up the auto-mode associations: -------------------------------
;;--------------------------------------------------------------------
(setq auto-mode-alist
   (append
    '(("\\.cc$"   	           . c++-mode)
	 ("\\.cpp$"  	           . c++-mode)
	 ("\\.ipp$"  	           . c++-mode)
	 ("\\.h[r]?[0-9]*[a-z]?$"  . c++-mode))
    auto-mode-alist))

;; Put this one at the front of the list to override the default
;; c-mode association.
(setq auto-mode-alist (cons (cons "\\.h$" 'c++-mode) auto-mode-alist))


(defalias 'make 'compile)
(defalias 'fnd  'find-name-dired)
(defalias 'nu   'linum-mode)
(defalias 'sb   'sr-speedbar-toggle)

;; Compilation output
;;(setq compilation-scroll-output t)


;; 等宽字体设置
;;(set-default-font "Ubuntu Mono:pixelsize=16") 
;;(dolist (charset '(kana han symbol cjk-misc bopomofo)) 
;;  (set-fontset-font (frame-parameter nil 'font) 
;;                    charset 
;;                    (font-spec :family "WenQuanYi Micro Hei" :size 16)))

(setq nxml-child-indent 4)  ;; work convention is 4 spaces for HTML, etc
(setq nxml-outline-child-indent 4)
(setq mumamo-submode-indent-offset 4)
(setq sgml-basic-offset 4)
