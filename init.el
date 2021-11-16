;; General settings
(setq inhibit-startup-message t)
(column-number-mode 1) ; display column number in mode line
(setq-default buffer-file-coding-system 'iso-latin-1-unix)


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


;; Configure packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (neotree lua-mode sqlformat php-mode magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Neotree settings
(global-set-key [f8] 'neotree-toggle)
