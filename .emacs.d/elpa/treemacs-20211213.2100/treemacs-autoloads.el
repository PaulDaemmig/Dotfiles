;;; treemacs-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "treemacs" "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs.el"
;;;;;;  "9609a50999f9e4a99a6520e8709d0353")
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs.el

(autoload 'treemacs-version "treemacs" "\
Return the `treemacs-version'." t nil)

(autoload 'treemacs "treemacs" "\
Initialise or toggle treemacs.
* If the treemacs window is visible hide it.
* If a treemacs buffer exists, but is not visible show it.
* If no treemacs buffer exists for the current frame create and show it.
* If the workspace is empty additionally ask for the root path of the first
  project to add." t nil)

(autoload 'treemacs-find-file "treemacs" "\
Find and focus the current file in the treemacs window.
If the current buffer has visits no file or with a prefix ARG ask for the
file instead.
Will show/create a treemacs buffers if it is not visible/does not exist.
For the most part only useful when `treemacs-follow-mode' is not active.

\(fn &optional ARG)" t nil)

(autoload 'treemacs-find-tag "treemacs" "\
Find and move point to the tag at point in the treemacs view.
Most likely to be useful when `treemacs-tag-follow-mode' is not active.

Will ask to change the treemacs root if the file to find is not under the
root.  If no treemacs buffer exists it will be created with the current file's
containing directory as root.  Will do nothing if the current buffer is not
visiting a file or Emacs cannot find any tags for the current file." t nil)

(autoload 'treemacs-select-window "treemacs" "\
Select the treemacs window if it is visible.
Bring it to the foreground if it is not visible.
Initialise a new treemacs buffer as calling `treemacs' would if there is no
treemacs buffer for this frame.
Jump back to the previously used window if point is already in treemacs." t nil)

(autoload 'treemacs-show-changelog "treemacs" "\
Show the changelog of treemacs." t nil)

(autoload 'treemacs-edit-workspaces "treemacs" "\
Edit your treemacs workspaces and projects as an `org-mode' file." t nil)

(autoload 'treemacs-display-current-project-exclusively "treemacs" "\
Display the current project, and *only* the current project.
Like `treemacs-add-and-display-current-project' this will add the current
project to treemacs based on either projectile, the built-in project.el, or the
current working directory.

However the 'exclusive' part means that it will make the current project the
only project, all other projects *will be removed* from the current workspace." t nil)

(autoload 'treemacs-add-and-display-current-project "treemacs" "\
Open treemacs and add the current project root to the workspace.
The project is determined first by projectile (if treemacs-projectile is
installed), then by project.el, then by the current working directory.

If the project is already registered with treemacs just move point to its root.
An error message is displayed if the current buffer is not part of any project." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs" "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs" '("treemacs-version")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-async"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-async.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-async.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-async" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs-bookmarks" "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-bookmarks.el"
;;;;;;  "c03e97df3a7cbba28803063273129e2d")
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-bookmarks.el

(autoload 'treemacs-bookmark "treemacs-bookmarks" "\
Find a bookmark in treemacs.
Only bookmarks marking either a file or a directory are offered for selection.
Treemacs will try to find and focus the given bookmark's location, in a similar
fashion to `treemacs-find-file'.

With a prefix argument ARG treemacs will also open the bookmarked location.

\(fn &optional ARG)" t nil)

(autoload 'treemacs--bookmark-handler "treemacs-bookmarks" "\
Open Treemacs into a bookmark RECORD.

\(fn RECORD)" nil nil)

(autoload 'treemacs-add-bookmark "treemacs-bookmarks" "\
Add the current node to Emacs' list of bookmarks.
For file and directory nodes their absolute path is saved.  Tag nodes
additionally also save the tag's position.  A tag can only be bookmarked if the
treemacs node is pointing to a valid buffer position." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-bookmarks"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-bookmarks.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-bookmarks.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-bookmarks" '("treemacs--")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-compatibility"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-compatibility.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-compatibility.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-compatibility" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-core-utils"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-core-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-core-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-core-utils" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-customization"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-customization.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-customization.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-customization" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-diagnostics"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-diagnostics.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-diagnostics.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-diagnostics" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-dom"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-dom.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-dom.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-dom" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-extensions"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-extensions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-extensions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-extensions" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs-file-management" "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-file-management.el"
;;;;;;  "411edeb1e9c26ea6ee051e9a7e382339")
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-file-management.el

(autoload 'treemacs-delete-file "treemacs-file-management" "\
Delete node at point.
A delete action must always be confirmed.  Directories are deleted recursively.
By default files are deleted by moving them to the trash.  With a prefix ARG
they will instead be wiped irreversibly.

\(fn &optional ARG)" t nil)

(autoload 'treemacs-move-file "treemacs-file-management" "\
Move file (or directory) at point.
Destination may also be a filename, in which case the moved file will also
be renamed." t nil)

(autoload 'treemacs-copy-file "treemacs-file-management" "\
Copy file (or directory) at point.
Destination may also be a filename, in which case the copied file will also
be renamed." t nil)

(autoload 'treemacs-rename-file "treemacs-file-management" "\
Rename the file/directory at point.

Buffers visiting the renamed file or visiting a file inside the renamed
directory and windows showing them will be reloaded.  The list of recent files
will likewise be updated." t nil)

(autoload 'treemacs-create-file "treemacs-file-management" "\
Create a new file.
Enter first the directory to create the new file in, then the new file's name.
The pre-selection for what directory to create in is based on the \"nearest\"
path to point - the containing directory for tags and files or the directory
itself, using $HOME when there is no path at or near point to grab." t nil)

(autoload 'treemacs-create-dir "treemacs-file-management" "\
Create a new directory.
Enter first the directory to create the new dir in, then the new dir's name.
The pre-selection for what directory to create in is based on the \"nearest\"
path to point - the containing directory for tags and files or the directory
itself, using $HOME when there is no path at or near point to grab." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-file-management"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-file-management.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-file-management.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-file-management" '("treemacs-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-filewatch-mode"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-filewatch-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-filewatch-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-filewatch-mode" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-follow-mode"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-follow-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-follow-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-follow-mode" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-fringe-indicator"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-fringe-indicator.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-fringe-indicator.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-fringe-indicator" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-header-line"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-header-line.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-header-line.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-header-line" '("treemacs-header-buttons-format")))

;;;***

;;;### (autoloads nil "treemacs-hydras" "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-hydras.el"
;;;;;;  "3b00e68a1c581e1804d9b25fd4da5f32")
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-hydras.el

(autoload 'treemacs-common-helpful-hydra "treemacs-hydras" "\
Summon a helpful hydra to show you the treemacs keymap.

This hydra will show the most commonly used keybinds for treemacs.  For the more
advanced (probably rarely used keybinds) see `treemacs-advanced-helpful-hydra'.

The keybinds shown in this hydra are not static, but reflect the actual
keybindings currently in use (including evil mode).  If the hydra is unable to
find the key a command is bound to it will show a blank instead." t nil)

(autoload 'treemacs-advanced-helpful-hydra "treemacs-hydras" "\
Summon a helpful hydra to show you the treemacs keymap.

This hydra will show the more advanced (rarely used) keybinds for treemacs.  For
the more commonly used keybinds see `treemacs-common-helpful-hydra'.

The keybinds shown in this hydra are not static, but reflect the actual
keybindings currently in use (including evil mode).  If the hydra is unable to
find the key a command is bound to it will show a blank instead." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-hydras"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-hydras.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-hydras.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-hydras" '("treemacs-helpful-hydra")))

;;;***

;;;***

;;;### (autoloads nil "treemacs-icons" "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-icons.el"
;;;;;;  "7bdacaa60c8b232d06a3d14ff0363aa1")
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-icons.el

(autoload 'treemacs-resize-icons "treemacs-icons" "\
Resize the current theme's icons to the given SIZE.

If SIZE is 'nil' the icons are not resized and will retain their default size of
22 pixels.

There is only one size, the icons are square and the aspect ratio will be
preserved when resizing them therefore width and height are the same.

Resizing the icons only works if Emacs was built with ImageMagick support, or if
using Emacs >= 27.1,which has native image resizing support.  If this is not the
case this function will not have any effect.

Custom icons are not taken into account, only the size of treemacs' own icons
png are changed.

\(fn SIZE)" t nil)

(autoload 'treemacs-define-custom-icon "treemacs-icons" "\
Define a custom ICON for the current theme to use for FILE-EXTENSIONS.

Note that treemacs has a very loose definition of what constitutes a file
extension - it's either everything past the last period, or just the file's full
name if there is no period.  This makes it possible to match file names like
'.gitignore' and 'Makefile'.

Additionally FILE-EXTENSIONS are also not case sensitive and will be stored in a
down-cased state.

\(fn ICON &rest FILE-EXTENSIONS)" nil nil)

(autoload 'treemacs-define-custom-image-icon "treemacs-icons" "\
Same as `treemacs-define-custom-icon' but for image icons instead of strings.
FILE is the path to an icon image (and not the actual icon string).
FILE-EXTENSIONS are all the (not case-sensitive) file extensions the icon
should be used for.

\(fn FILE &rest FILE-EXTENSIONS)" nil nil)

(autoload 'treemacs-map-icons-with-auto-mode-alist "treemacs-icons" "\
Remaps icons for EXTENSIONS according to `auto-mode-alist'.
EXTENSIONS should be a list of file extensions such that they match the regex
stored in `auto-mode-alist', for example '(\".cc\").
MODE-ICON-ALIST is an alist that maps which mode from `auto-mode-alist' should
be assigned which treemacs icon, for example
'((c-mode . treemacs-icon-c)
  (c++-mode . treemacs-icon-cpp))

\(fn EXTENSIONS MODE-ICON-ALIST)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-icons"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-icons.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-icons.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-icons" '("treemacs-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-interface"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-interface.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-interface.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-interface" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-logging"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-logging.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-logging.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-logging" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-macros"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-macros.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-macros.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-macros" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs-mode" "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-mode.el"
;;;;;;  "8edc604fb49b51d673f54f0e68b21948")
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-mode.el

(autoload 'treemacs-mode "treemacs-mode" "\
A major mode for displaying the file system in a tree layout.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-mode"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-mode" '("treemacs-")))

;;;***

;;;***

;;;### (autoloads nil "treemacs-mouse-interface" "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-mouse-interface.el"
;;;;;;  "a51274971bf5ad78a7781c268fb2adba")
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-mouse-interface.el

(autoload 'treemacs-leftclick-action "treemacs-mouse-interface" "\
Move focus to the clicked line.
Must be bound to a mouse click, or EVENT will not be supplied.

\(fn EVENT)" t nil)

(autoload 'treemacs-doubleclick-action "treemacs-mouse-interface" "\
Run the appropriate double-click action for the current node.
In the default configuration this means to expand/collapse directories and open
files and tags in the most recently used window.

This function's exact configuration is stored in
`treemacs-doubleclick-actions-config'.

Must be bound to a mouse double click to properly handle a click EVENT.

\(fn EVENT)" t nil)

(autoload 'treemacs-single-click-expand-action "treemacs-mouse-interface" "\
A modified single-leftclick action that expands the clicked nodes.
Can be bound to <mouse1> if you prefer to expand nodes with a single click
instead of a double click.  Either way it must be bound to a mouse click, or
EVENT will not be supplied.

Clicking on icons will expand a file's tags, just like
`treemacs-leftclick-action'.

\(fn EVENT)" t nil)

(autoload 'treemacs-dragleftclick-action "treemacs-mouse-interface" "\
Drag a file/dir node to be opened in a window.
Must be bound to a mouse click, or EVENT will not be supplied.

\(fn EVENT)" t nil)

(autoload 'treemacs-define-doubleclick-action "treemacs-mouse-interface" "\
Define the behaviour of `treemacs-doubleclick-action'.
Determines that a button with a given STATE should lead to the execution of
ACTION.

The list of possible states can be found in `treemacs-valid-button-states'.
ACTION should be one of the `treemacs-visit-node-*' commands.

\(fn STATE ACTION)" nil nil)

(autoload 'treemacs-node-buffer-and-position "treemacs-mouse-interface" "\
Return source buffer or list of buffer and position for the current node.
This information can be used for future display.  Stay in the selected window
and ignore any prefix argument.

\(fn &optional _)" t nil)

(autoload 'treemacs-rightclick-menu "treemacs-mouse-interface" "\
Show a contextual right click menu based on click EVENT.

\(fn EVENT)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-mouse-interface"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-mouse-interface.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-mouse-interface.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-mouse-interface" '("treemacs--")))

;;;***

;;;***

;;;### (autoloads nil "treemacs-peek-mode" "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-peek-mode.el"
;;;;;;  "4f9264b44cf1faf204bc5d9a067c3bfc")
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-peek-mode.el

(defvar treemacs-peek-mode nil "\
Non-nil if Treemacs-Peek mode is enabled.
See the `treemacs-peek-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `treemacs-peek-mode'.")

(custom-autoload 'treemacs-peek-mode "treemacs-peek-mode" nil)

(autoload 'treemacs-peek-mode "treemacs-peek-mode" "\
Minor mode that allows you to peek at buffers before deciding to open them.

If called interactively, enable Treemacs-Peek mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

While the mode is active treemacs will automatically display the file at point,
without leving the treemacs window.

Peeking will stop when you leave the treemacs window, be it through a command
like `treemacs-RET-action' or some other window selection change.

Files' buffers that have been opened for peeking will be cleaned up if they did
not exist before peeking started.

The peeked window can be scrolled using
`treemacs-next/previous-line-other-window' and
`treemacs-next/previous-page-other-window'

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-peek-mode"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-peek-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-peek-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-peek-mode" '("treemacs--")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-persistence"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-persistence.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-persistence.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-persistence" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs-project-follow-mode" "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-project-follow-mode.el"
;;;;;;  "84324ee1a5ec1231b9514217ddc273d0")
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-project-follow-mode.el

(defvar treemacs-project-follow-mode nil "\
Non-nil if Treemacs-Project-Follow mode is enabled.
See the `treemacs-project-follow-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `treemacs-project-follow-mode'.")

(custom-autoload 'treemacs-project-follow-mode "treemacs-project-follow-mode" nil)

(autoload 'treemacs-project-follow-mode "treemacs-project-follow-mode" "\
Toggle `treemacs-only-current-project-mode'.

If called interactively, enable Treemacs-Project-Follow mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

This is a minor mode meant for those who do not care about treemacs' workspace
features, or its preference to work with multiple projects simultaneously.  When
enabled it will function as an automated version of
`treemacs-display-current-project-exclusively', making sure that, after a small
idle delay, the current project, and *only* the current project, is displayed in
treemacs.

The project detection is based on the current buffer, and will try to determine
the project using the following methods, in the order they are listed:

- the current projectile.el project, if `treemacs-projectile' is installed
- the current project.el project
- the current `default-directory'

The update will only happen when treemacs is in the foreground, meaning a
treemacs window must exist in the current scope.

This mode requires at least Emacs version 27 since it relies on
`window-buffer-change-functions' and `window-selection-change-functions'.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-project-follow-mode"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-project-follow-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-project-follow-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-project-follow-mode" '("treemacs--")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-rendering"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-rendering.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-rendering.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-rendering" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-scope"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-scope.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-scope.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-scope" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs-tag-follow-mode" "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-tag-follow-mode.el"
;;;;;;  "97902a64b0b3ba8d2d92143401048f8a")
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-tag-follow-mode.el

(autoload 'treemacs--flatten&sort-imenu-index "treemacs-tag-follow-mode" "\
Flatten current file's imenu index and sort it by tag position.
The tags are sorted into the order in which they appear, regardless of section
or nesting depth." nil nil)

(defvar treemacs-tag-follow-mode nil "\
Non-nil if Treemacs-Tag-Follow mode is enabled.
See the `treemacs-tag-follow-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `treemacs-tag-follow-mode'.")

(custom-autoload 'treemacs-tag-follow-mode "treemacs-tag-follow-mode" nil)

(autoload 'treemacs-tag-follow-mode "treemacs-tag-follow-mode" "\
Toggle `treemacs-tag-follow-mode'.

If called interactively, enable Treemacs-Tag-Follow mode if ARG
is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

This acts as more fine-grained alternative to `treemacs-follow-mode' and will
thus disable `treemacs-follow-mode' on activation.  When enabled treemacs will
focus not only the file of the current buffer, but also the tag at point.

The follow action is attached to Emacs' idle timer and will run
`treemacs-tag-follow-delay' seconds of idle time.  The delay value is not an
integer, meaning it accepts floating point values like 1.5.

Every time a tag is followed a re--scan of the imenu index is forced by
temporarily setting `imenu-auto-rescan' to t (though a cache is applied as long
as the buffer is unmodified).  This is necessary to assure that creation or
deletion of tags does not lead to errors and guarantees an always up-to-date tag
view.

Note that in order to move to a tag in treemacs the treemacs buffer's window
needs to be temporarily selected, which will reset blink-cursor-mode's timer if
it is enabled.  This will result in the cursor blinking seemingly pausing for a
short time and giving the appearance of the tag follow action lasting much
longer than it really does.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-tag-follow-mode"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-tag-follow-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-tag-follow-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-tag-follow-mode" '("treemacs--")))

;;;***

;;;***

;;;### (autoloads nil "treemacs-tags" "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-tags.el"
;;;;;;  "226f3d0b37e89802ca745dfef5289854")
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-tags.el

(autoload 'treemacs--expand-file-node "treemacs-tags" "\
Open tag items for file BTN.
Recursively open all tags below BTN when RECURSIVE is non-nil.

\(fn BTN &optional RECURSIVE)" nil nil)

(autoload 'treemacs--collapse-file-node "treemacs-tags" "\
Close node given by BTN.
Remove all open tag entries under BTN when RECURSIVE.

\(fn BTN &optional RECURSIVE)" nil nil)

(autoload 'treemacs--visit-or-expand/collapse-tag-node "treemacs-tags" "\
Visit tag section BTN if possible, expand or collapse it otherwise.
Pass prefix ARG on to either visit or toggle action.

FIND-WINDOW is a special provision depending on this function's invocation
context and decides whether to find the window to display in (if the tag is
visited instead of the node being expanded).

On the one hand it can be called based on `treemacs-RET-actions-config' (or
TAB).  The functions in these configs are expected to find the windows they need
to display in themselves, so FIND-WINDOW must be t. On the other hand this
function is also called from the top level vist-node functions like
`treemacs-visit-node-vertical-split' which delegates to the
`treemacs--execute-button-action' macro which includes the determination of
the display window.

\(fn BTN ARG FIND-WINDOW)" nil nil)

(autoload 'treemacs--expand-tag-node "treemacs-tags" "\
Open tags node items for BTN.
Open all tag section under BTN when call is RECURSIVE.

\(fn BTN &optional RECURSIVE)" nil nil)

(autoload 'treemacs--collapse-tag-node "treemacs-tags" "\
Close tags node at BTN.
Remove all open tag entries under BTN when RECURSIVE.

\(fn BTN &optional RECURSIVE)" nil nil)

(autoload 'treemacs--goto-tag "treemacs-tags" "\
Go to the tag at BTN.

\(fn BTN)" nil nil)

(autoload 'treemacs--create-imenu-index-function "treemacs-tags" "\
The `imenu-create-index-function' for treemacs buffers." nil nil)

(function-put 'treemacs--create-imenu-index-function 'side-effect-free 't)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-tags"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-tags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-tags.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-tags" '("treemacs--")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-themes"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-themes.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-themes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-themes" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-visuals"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-visuals.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-visuals.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-visuals" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-workspaces"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-workspaces.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-workspaces.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-workspaces" '("treemacs-")))

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-async.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-bookmarks.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-compatibility.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-core-utils.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-customization.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-diagnostics.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-dom.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-extensions.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-faces.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-file-management.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-filewatch-mode.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-follow-mode.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-fringe-indicator.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-header-line.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-hydras.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-icons.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-interface.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-logging.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-macros.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-mode.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-mouse-interface.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-peek-mode.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-persistence.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-pkg.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-project-follow-mode.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-rendering.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-scope.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-tag-follow-mode.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-tags.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-themes.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-visuals.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs-workspaces.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20211213.2100/treemacs.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; treemacs-autoloads.el ends here
