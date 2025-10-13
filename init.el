(set-face-attribute 'default nil :font (font-spec :family "Sarasa Fixed SC" :size 32))
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-splash-screen 1)
(setq visible-bell nil)
(setq ring-bell-function #'ignore)
(fset 'yes-or-no-p 'y-or-n-p)
(setq default-frame-alist '((left . 0) (width . 141) (fullscreen . fullheight)))

(fido-vertical-mode 1)
(electric-pair-mode 1)
(auto-revert-mode 1)

(setq show-paren-context-when-offscreen 'overlay)
(setq show-paren-when-point-in-periphery t)
(show-paren-mode 1)

(setq dabbrev-case-replace nil)
;; Use `<tab>' to complete
(setq tab-always-indent 'complete)

(defun my/show-tabs ()
  (setq whitespace-style '(face tab-mark))
  (whitespace-mode 1))
(defun my/show-trailing-whitespace ()
  (set-face-attribute 'trailing-whitespace nil
                      :background "green")
  (setq show-trailing-whitespace 1))
(add-hook 'prog-mode-hook 'my/show-tabs)
(add-hook 'prog-mode-hook 'my/show-trailing-whitespace)

;; Default use spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Use tabs in cc-mode
(add-hook 'c-mode-common-hook
          (lambda ()
            (c-set-style "linux")
            (setq c-basic-offset 4)
            (add-to-list (make-local-variable 'electric-pair-pairs)
                         (cons ?< ?>))))

(global-set-key [remap comment-dwim] #'comment-line)
(global-set-key (kbd "M-]") 'delete-pair)
(global-set-key (kbd "C-<f8>") 'upcase-dwim)
(global-set-key (kbd "M-u") 'up-list)

(add-hook 'emacs-startup-hook
          (lambda ()
            (message "Emacs ready in %s with %d garbage collections."
                     (format "%.4f seconds"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done)))
