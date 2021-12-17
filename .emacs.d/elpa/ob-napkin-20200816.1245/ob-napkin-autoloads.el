;;; ob-napkin-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ob-napkin" "ob-napkin.el" (0 0 0 0))
;;; Generated autoloads from ob-napkin.el

(autoload 'org-babel-execute:napkin "ob-napkin" "\
Execute a block of napkin code with BODY and PARAMS with Babel.
napkin tool will be invoked to generate the image.

\(fn BODY PARAMS)" nil nil)

(autoload 'org-babel-execute:napkin-puml "ob-napkin" "\
Execute a block of plantuml code with BODY and PARAMS with Babel.
napkin_plantuml tool will be invoked to generate the image.

\(fn BODY PARAMS)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-napkin" '("ob-napkin-unload-function" "org-babel-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ob-napkin-autoloads.el ends here
