;;; org-roam-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads "actual autoloads are elsewhere" "org-roam" "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-roam" '("org-roam-")))

;;;***

;;;### (autoloads nil "org-roam-capture" "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-capture.el"
;;;;;;  "aae4322e21890a930c8b4d60954c5fa5")
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-capture.el

(autoload 'org-roam-capture- "org-roam-capture" "\
Main entry point of `org-roam-capture' module.
GOTO and KEYS correspond to `org-capture' arguments.
INFO is a plist for filling up Org-roam's capture templates.
NODE is an `org-roam-node' construct containing information about the node.
PROPS is a plist containing additional Org-roam properties for each template.
TEMPLATES is a list of org-roam templates.

\(fn &key GOTO KEYS NODE INFO PROPS TEMPLATES)" nil nil)

(autoload 'org-roam-capture "org-roam-capture" "\
Launches an `org-capture' process for a new or existing node.
This uses the templates defined at `org-roam-capture-templates'.
Arguments GOTO and KEYS see `org-capture'.
FILTER-FN is a function to filter out nodes: it takes an `org-roam-node',
and when nil is returned the node will be filtered out.
The TEMPLATES, if provided, override the list of capture templates (see
`org-roam-capture-'.)
The INFO, if provided, is passed along to the underlying `org-roam-capture-'.

\(fn &optional GOTO KEYS &key FILTER-FN TEMPLATES INFO)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-roam-capture"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-capture.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-capture.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-roam-capture" '("org-roam-capture-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-roam-compat"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-compat.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-compat.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-roam-compat" '("org-roam--")))

;;;***

;;;### (autoloads nil "org-roam-dailies" "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-dailies.el"
;;;;;;  "21a2d07a00a4ddde549c8e2081654f82")
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-dailies.el

(autoload 'org-roam-dailies-capture-today "org-roam-dailies" "\
Create an entry in the daily-note for today.
When GOTO is non-nil, go the note without creating an entry.

\(fn &optional GOTO)" t nil)

(autoload 'org-roam-dailies-goto-today "org-roam-dailies" "\
Find the daily-note for today, creating it if necessary." t nil)

(autoload 'org-roam-dailies-capture-tomorrow "org-roam-dailies" "\
Create an entry in the daily-note for tomorrow.

With numeric argument N, use the daily-note N days in the future.

With a `C-u' prefix or when GOTO is non-nil, go the note without
creating an entry.

\(fn N &optional GOTO)" t nil)

(autoload 'org-roam-dailies-goto-tomorrow "org-roam-dailies" "\
Find the daily-note for tomorrow, creating it if necessary.

With numeric argument N, use the daily-note N days in the
future.

\(fn N)" t nil)

(autoload 'org-roam-dailies-capture-yesterday "org-roam-dailies" "\
Create an entry in the daily-note for yesteday.

With numeric argument N, use the daily-note N days in the past.

When GOTO is non-nil, go the note without creating an entry.

\(fn N &optional GOTO)" t nil)

(autoload 'org-roam-dailies-goto-yesterday "org-roam-dailies" "\
Find the daily-note for yesterday, creating it if necessary.

With numeric argument N, use the daily-note N days in the
future.

\(fn N)" t nil)

(autoload 'org-roam-dailies-capture-date "org-roam-dailies" "\
Create an entry in the daily-note for a date using the calendar.
Prefer past dates, unless PREFER-FUTURE is non-nil.
With a `C-u' prefix or when GOTO is non-nil, go the note without
creating an entry.

\(fn &optional GOTO PREFER-FUTURE)" t nil)

(autoload 'org-roam-dailies-goto-date "org-roam-dailies" "\
Find the daily-note for a date using the calendar, creating it if necessary.
Prefer past dates, unless PREFER-FUTURE is non-nil.

\(fn &optional PREFER-FUTURE)" t nil)

(autoload 'org-roam-dailies-find-directory "org-roam-dailies" "\
Find and open `org-roam-dailies-directory'." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-roam-dailies"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-dailies.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-dailies.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-roam-dailies" '("org-roam-dailies-")))

;;;***

;;;***

;;;### (autoloads nil "org-roam-db" "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-db.el"
;;;;;;  "90e8d6a24debf598e7560220bfed1b9e")
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-db.el

(autoload 'org-roam-db-sync "org-roam-db" "\
Synchronize the cache state with the current Org files on-disk.
If FORCE, force a rebuild of the cache from scratch.

\(fn &optional FORCE)" t nil)

(defvar org-roam-db-autosync-mode nil "\
Non-nil if Org-Roam-Db-Autosync mode is enabled.
See the `org-roam-db-autosync-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `org-roam-db-autosync-mode'.")

(custom-autoload 'org-roam-db-autosync-mode "org-roam-db" nil)

(autoload 'org-roam-db-autosync-mode "org-roam-db" "\
Global minor mode to keep your Org-roam session automatically synchronized.
Through the session this will continue to setup your
buffers (that are Org-roam file visiting), keep track of the
related changes, maintain cache consistency and incrementally
update the currently active database.

If called interactively, enable Org-Roam-Db-Autosync mode if ARG
is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

If you need to manually trigger resync of the currently active
database, see `org-roam-db-sync' command.

\(fn &optional ARG)" t nil)

(autoload 'org-roam-db-autosync-enable "org-roam-db" "\
Activate `org-roam-db-autosync-mode'." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-roam-db"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-db.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-db.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-roam-db" '("emacsql-constraint" "org-roam-")))

;;;***

;;;***

;;;### (autoloads nil "org-roam-graph" "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-graph.el"
;;;;;;  "6f937b3a0a2dc25daf61d1611ce9e9c7")
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-graph.el

(autoload 'org-roam-graph "org-roam-graph" "\
Build and possibly display a graph for NODE.
ARG may be any of the following values:
  - nil       show the graph.
  - `\\[universal-argument]'     show the graph for NODE.
  - `\\[universal-argument]' N   show the graph for NODE limiting nodes to N steps.

\(fn &optional ARG NODE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-roam-graph"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-graph.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-graph.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-roam-graph" '("org-roam-")))

;;;***

;;;***

;;;### (autoloads nil "org-roam-migrate" "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-migrate.el"
;;;;;;  "3460ec7e266662c6436c0edb30fcc5a5")
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-migrate.el

(autoload 'org-roam-migrate-wizard "org-roam-migrate" "\
Migrate all notes from to be compatible with Org-roam v2.
1. Convert all notes from v1 format to v2.
2. Rebuild the cache.
3. Replace all file links with ID links." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-roam-migrate"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-migrate.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-migrate.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-roam-migrate" '("org-roam-migrate-")))

;;;***

;;;***

;;;### (autoloads nil "org-roam-mode" "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-mode.el"
;;;;;;  "d46680f7942243c84c663216861db15e")
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-mode.el

(autoload 'org-roam-buffer-display-dedicated "org-roam-mode" "\
Launch NODE dedicated Org-roam buffer.
Unlike the persistent `org-roam-buffer', the contents of this
buffer won't be automatically changed and will be held in place.

In interactive calls prompt to select NODE, unless called with
`universal-argument', in which case NODE will be set to
`org-roam-node-at-point'.

\(fn NODE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-roam-mode"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-roam-mode" '("org-roam-")))

;;;***

;;;***

;;;### (autoloads nil "org-roam-node" "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-node.el"
;;;;;;  "9c19845a6ffece16f45eb2d7fe81952a")
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-node.el

(autoload 'org-roam-node-find "org-roam-node" "\
Find and open an Org-roam node by its title or alias.
INITIAL-INPUT is the initial input for the prompt.
FILTER-FN is a function to filter out nodes: it takes an `org-roam-node',
and when nil is returned the node will be filtered out.
If OTHER-WINDOW, visit the NODE in another window.
The TEMPLATES, if provided, override the list of capture templates (see
`org-roam-capture-'.)

\(fn &optional OTHER-WINDOW INITIAL-INPUT FILTER-FN &key TEMPLATES)" t nil)

(autoload 'org-roam-node-random "org-roam-node" "\
Find and open a random Org-roam node.
With prefix argument OTHER-WINDOW, visit the node in another
window instead.

\(fn &optional OTHER-WINDOW)" t nil)

(autoload 'org-roam-node-insert "org-roam-node" "\
Find an Org-roam node and insert (where the point is) an \"id:\" link to it.
FILTER-FN is a function to filter out nodes: it takes an `org-roam-node',
and when nil is returned the node will be filtered out.
The TEMPLATES, if provided, override the list of capture templates (see
`org-roam-capture-'.)
The INFO, if provided, is passed to the underlying `org-roam-capture-'.

\(fn &optional FILTER-FN &key TEMPLATES INFO)" t nil)

(autoload 'org-roam-refile "org-roam-node" "\
Refile node at point to an Org-roam node.
If region is active, then use it instead of the node at point." t nil)

(autoload 'org-roam-extract-subtree "org-roam-node" "\
Convert current subtree at point to a node, and extract it into a new file." t nil)

(autoload 'org-roam-update-org-id-locations "org-roam-node" "\
Scan Org-roam files to update `org-id' related state.
This is like `org-id-update-id-locations', but will automatically
use the currently bound `org-directory' and `org-roam-directory'
along with DIRECTORIES (if any), where the lookup for files in
these directories will be always recursive.

Note: Org-roam doesn't have hard dependency on
`org-id-locations-file' to lookup IDs for nodes that are stored
in the database, but it still tries to properly integrates with
`org-id'. This allows the user to cross-reference IDs outside of
the current `org-roam-directory', and also link with \"id:\"
links to headings/files within the current `org-roam-directory'
that are excluded from identification in Org-roam as
`org-roam-node's, e.g. with \"ROAM_EXCLUDE\" property.

\(fn &rest DIRECTORIES)" t nil)

(autoload 'org-roam-ref-find "org-roam-node" "\
Find and open an Org-roam node that's dedicated to a specific ref.
INITIAL-INPUT is the initial input to the prompt.
FILTER-FN is a function to filter out nodes: it takes an `org-roam-node',
and when nil is returned the node will be filtered out.

\(fn &optional INITIAL-INPUT FILTER-FN)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-roam-node"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-node.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-node.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-roam-node" '("org-roam-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-roam-overlay"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-overlay.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-overlay.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-roam-overlay" '("org-roam-overlay-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "org-roam-protocol"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-protocol.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-protocol.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-roam-protocol" '("org-roam-")))

;;;***

;;;### (autoloads nil "org-roam-utils" "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-utils.el"
;;;;;;  "292f1ac0334b9e8b64acc3be988b5f7d")
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-utils.el

(autoload 'org-roam-version "org-roam-utils" "\
Return `org-roam' version.
Interactively, or when MESSAGE is non-nil, show in the echo area.

\(fn &optional MESSAGE)" t nil)

(autoload 'org-roam-diagnostics "org-roam-utils" "\
Collect and print info for `org-roam' issues." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "org-roam-utils"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-roam-utils" '("org-roam-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-capture.el"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-compat.el"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-dailies.el"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-db.el"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-graph.el"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-migrate.el"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-mode.el"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-node.el"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-overlay.el"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-pkg.el"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-protocol.el"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam-utils.el"
;;;;;;  "../../../../.emacs.d/elpa/org-roam-20211215.848/org-roam.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-roam-autoloads.el ends here
