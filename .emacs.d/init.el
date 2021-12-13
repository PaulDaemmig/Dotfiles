(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

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
  (add-hook mode (lambda () (dosplay-line-numbers-mode 0))))

(use-package all-the-icons)
(use-package doom-modeline
  :init (doom-modeline-mode 1))

(use-package doom-themes
  :init (load-theme 'doom-palenight t))

(use-package evil
  :config (evil-mode 1))

(use-package counsel
  :config (ivy-mode 1)
	  (global-set-key (kbd "C-s") 'swiper-isearch)
	  (global-set-key (kbd "C-x C-b") 'counsel-switch-buffer)
	  (global-set-key (kbd "M-x") 'counsel-M-x))

(use-package lsp-mode)
(use-package lsp-ui)
(use-package flycheck
  :config (global-flycheck-mode t))
(use-package lsp-ivy)
(use-package lsp-treemacs)

(use-package company
  :config (global-company-mode t))

(use-package rainbow-delimiters
 :config (rainbow-delimiters-mode t))

(use-package magit)
(use-package projectile)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(setq org-startup-folded t)

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
