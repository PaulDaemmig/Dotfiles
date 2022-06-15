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

(set-face-attribute 'default nil :font "CodeNewRoman Nerd Font" :height 140)
(set-face-attribute 'fixed-pitch nil :font "CodeNewRoman Nerd Font" :height 140)
(set-face-attribute 'variable-pitch nil :font "Hack Nerd Font" :height 120)

(set-frame-parameter (selected-frame) 'alpha '(100 . 100))
(add-to-list 'default-frame-alist '(alpha . (100 . 100)))

(use-package all-the-icons)
(use-package doom-modeline
  :init (doom-modeline-mode 1))

(use-package doom-themes
  :init (load-theme 'doom-palenight t))

(use-package dashboard
  :config (dashboard-setup-startup-hook))
(setq dashboard-center-content t)

(use-package evil
  :init (setq evil-want-keybinding nil)
  :config (evil-mode 1))

(use-package evil-collection
  :config (evil-collection-init))

(use-package counsel
  :config (ivy-mode 1))

(use-package which-key
  :config (which-key-mode t))

(use-package lsp-mode)
(use-package lsp-ui)
(use-package lsp-ivy)
(use-package lsp-treemacs)
(use-package treemacs-evil)
(use-package treemacs-projectile)
(use-package treemacs-icons-dired
  :hook (dired-mode . treemacs-icons-dired-enable-once))

(use-package company
  :config (global-company-mode t))

(use-package yasnippet
  :config (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
          (yas-global-mode 1))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode ))

(use-package slime)
(setq inferior-lisp-program "sbcl")

(use-package magit)
(use-package projectile
  :config (projectile-mode +1))

(use-package org)
(add-hook 'org-mode-hook (lambda () (org-indent-mode 1)))
(add-hook 'org-mode-hook (lambda () (variable-pitch-mode 1)))
(add-hook 'org-mode-hook (lambda () (visual-line-mode 1)))

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(setq org-startup-folded t)

(use-package org-superstar)
  (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

(defun olivetti-centering ()
"Zentrieren von Buffern"
(olivetti-mode 1)
(olivetti-set-width 0.8))

(use-package olivetti
  :hook (org-mode . olivetti-centering))

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

(use-package wucuo
  :config (setq ispell-program-name "aspell")
          (setq ispell-extra-args '("--sug-mode=ultra" "--lang=de_DE" "--run-together" "--run-together-limit=16"))
  :hook (org-mode . wucuo-start))

(use-package general
:config
  (general-create-definer my-leader-def
   :prefix "SPC")

  (my-leader-def
    :keymaps 'normal
    "a" 'org-agenda
    "d" 'counsel-dired
    "l" 'lsp
    "t" 'treemacs
    "p" 'projectile-command-map)

  (general-define-key
   "M-x" 'counsel-M-x
   "C-x C-b" 'counsel-switch-buffer
   "C-s" 'swiper-isearch))
