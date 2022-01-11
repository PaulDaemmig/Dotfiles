(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
  (unless package-archive-contents
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

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
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

(set-face-attribute 'default nil :font "NotoSans Nerd Font" :height 120)
(set-face-attribute 'fixed-pitch nil :font "NotoSans Nerd Font" :height 120)
(set-face-attribute 'variable-pitch nil :font "Hack Nerd Font" :height 140)

(use-package all-the-icons)
(use-package doom-modeline
  :init (doom-modeline-mode 1))

(use-package doom-themes
  :init (load-theme 'doom-moonlight t))

(use-package dashboard
  :config (dashboard-setup-startup-hook))
(setq dashboard-center-content t)

(use-package evil
  :config (evil-mode 1))

(use-package counsel
  :config (ivy-mode 1)
	  (global-set-key (kbd "C-s") 'swiper-isearch)
	  (global-set-key (kbd "C-x C-b") 'counsel-switch-buffer)
	  (global-set-key (kbd "M-x") 'counsel-M-x))

(use-package which-key
  :config (which-key-mode t))

(use-package lsp-mode)
(use-package lsp-ui)
(use-package flycheck
  :config (global-flycheck-mode t))
(use-package lsp-ivy)
(use-package lsp-treemacs)

(use-package company
  :config (global-company-mode t))

(use-package yasnippet
  :config (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
          (yas-global-mode 1))

(use-package rainbow-delimiters)

(use-package magit)
(use-package projectile)

(add-hook 'org-mode-hook (lambda () (org-indent-mode 1)))
(add-hook 'org-mode-hook (lambda () (variable-pitch-mode 1)))
(add-hook 'org-mode-hook (lambda () (visual-line-mode 1)))

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(setq org-startup-folded t)

(use-package org-superstar)
  (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

(defun org-centering ()
  "Setzen der Parameter und aktivieren des Modus"
  (setq visual-fill-column-width 180
	visual-fill-column-center-text t)
  (visual-fill-column-mode 1))	 
(use-package visual-fill-column
  :hook (org-mode . org-centering))

(with-eval-after-load 'ox-latex
(add-to-list 'org-latex-classes
	     '("org-plain-latex"
	       "\\documentclass{article}
	   [NO-DEFAULT-PACKAGES]
	   [PACKAGES]
	   [EXTRA]"
	       ("\\section{%s}" . "\\section*{%s}")
	       ("\\subsection{%s}" . "\\subsection*{%s}")
	       ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
	       ("\\paragraph{%s}" . "\\paragraph*{%s}")
	       ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))

(use-package ob-napkin)

(use-package org-roam
  :config (setq org-roam-directory (file-truename "~/org"))
	  (org-roam-db-autosync-mode t))

(use-package pdf-tools)

(use-package ledger-mode
    :mode ("\\.dat\\'"
           "\\.ledger\\'")
    :custom (ledger-clear-whole-transactions t))
       
  (use-package flycheck-ledger
    :after ledger-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(lua-mode haskell-mode yasnippet which-key visual-fill-column use-package rainbow-delimiters projectile pdf-tools org-superstar org-roam ob-napkin magit lsp-ui lsp-treemacs lsp-ivy ledger-mode flycheck-ledger exwm evil doom-themes doom-modeline dashboard counsel company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
