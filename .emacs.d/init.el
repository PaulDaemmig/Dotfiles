(require 'package)

 (setq package-archives '(("melpa" . "https://melpa.org/packages/")
			  ("org" . "https://orgmode.org/elpa/")
			  ("elpa" . "https://elpa.gnu.org/packages/")))

 (package-initialize)
 (unless package-archive-contents
   (package-refresh-contents))

 (require 'use-package)
 (setq use-package-always-ensure t)

 ;;---------------------------------------------

 (setq inhibit-startup-message t)
 (scroll-bar-mode -1)
 (tool-bar-mode -1)
 (tooltip-mode -1)
 (menu-bar-mode -1)
 (setq visible-bell t)

 (column-number-mode)
 (global-display-line-numbers-mode t)

 (dolist (mode '(org-mode-hook
		 term-mode hook
		 shell-mode-hook
		 treemacs-mode-hook
		 eshell-mode-hook))
   (add-hook mode (lambda () (dosplay-line-numbers-mode 0))))

 ;;----------------------------------------------
 (use-package evil
   :config (evil-mode 1))

 (use-package counsel
   :config (ivy-mode 1)
	   (global-set-key (kbd "C-s") 'swiper-isearch)
	   (global-set-key (kbd "C-x C-b") 'counsel-switch-buffer)
	   (global-set-key (kbd "M-x") 'counsel-M-x))

(use-package rainbow-delimiters
   :config (rainbow-delimiters-mode))

(use-package magit)
(use-package projectile)
 ;;----------------------------------------------
 (use-package doom-themes
   :init (load-theme 'doom-palenight t))

 (use-package all-the-icons)
 (use-package doom-modeline
   :init (doom-modeline-mode 1))

 ;;---------------------------------------------
 (use-package eglot)
 (use-package company
   :config (global-company-mode t))
 (use-package yasnippet
   :config (yas-global-mode 1))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(vterm yasnippet use-package rainbow-delimiters magit evil eglot doom-themes doom-modeline counsel company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
