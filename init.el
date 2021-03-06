;; General settings
(setq inhibit-startup-message t)
(column-number-mode 1) ; display column number in mode line
(setq-default buffer-file-coding-system 'iso-latin-1-unix)

; Set new frame appearance to provide space for neotree
(if (display-graphic-p)
    (progn
      (setq initial-frame-alist
            '(
              (tool-bar-lines . 0)
              (width . 109) ; chars
              (height . 45) ; lines
              (background-color . "honeydew")
              (left . 50)
              (top . 50)))
      (setq default-frame-alist
            '(
              (tool-bar-lines . 0)
              (width . 109)
              (height . 45)
              (background-color . "honeydew")
              (left . 50)
              (top . 50))))
  (progn
    (setq initial-frame-alist '( (tool-bar-lines . 0)))
    (setq default-frame-alist '( (tool-bar-lines . 0)))))


;; Set up backup file / auto-save setting
(setq backup-by-copying t ; don't clobber symlinks
      backup-directory-alist '(("." . "~/.emacs.d/saves"))
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t) ; use versioned backups
(setq create-lock-files nil)


;; Org mode settings
(add-hook 'org-mode-hook 'turn-on-auto-fill)

;; Packages

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package helm
  :ensure t)

(use-package projectile
  :ensure t)

(use-package neotree
  :bind ([f8] . neotree-toggle)
  :ensure t)

(use-package magit
  :ensure t)

; evil-mode dependency
(use-package undo-fu
  :ensure t)

; evil-mode dependency
(use-package goto-chg
  :ensure t)

(use-package evil
  :config
  (evil-mode 1)
  :ensure t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (evil goto-chg undo-fu magit neotree projectile use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
