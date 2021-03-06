;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; auto-completion
     auto-completion
     w3m
     better-defaults
     emacs-lisp
     extra-langs
     git
     sql
     html
     markdown
     org
     (shell :variables
             shell-default-height 30
             shell-default-position 'bottom)
     spell-checking
     ;; syntax-checking
     version-control
     github
     php
     python
     shell-script
     gnus
     (javascript :variables javascript-disable-tern-port-files nil)
     (c-c++ :variables
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-clang-support t)
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-light
                         gotham
                         spacemacs-dark
                         solarized-light
                         solarized-dark
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 12
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (add-to-list 'load-path "~/.emacs.d/wmi/")
  (prefer-coding-system 'utf-8)
  (set-language-environment 'utf-8)
  (set-default-coding-systems 'utf-8)
  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)

  (setq-default

   ;; js2-mode
   js2-basic-offset 2
   js-indent-level 2
   ;; web-mode
   css-indent-offset 2
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2)

  (setq locale-coding-system 'utf-8)

  (if (boundp 'buffer-file-coding-system)
      (setq-default buffer-file-coding-system 'utf-8)
    (setq default-buffer-file-coding-system 'utf-8))
  (setq-default fill-column 80)

  (global-set-key (kbd "C-h") 'backward-delete-char)
  (global-set-key (kbd "C-c h o") 'helm-occur)
  (global-set-key (kbd "C-c h C-c w") 'helm-wikipedia-suggest)
  (global-set-key (kbd "C-x C-b") 'ibuffer) ;; bind "C-x C-b" to ibuffer command
  (global-unset-key (kbd "C-x c"))
  (global-set-key (kbd "C-?") 'help-command)
  (global-set-key (kbd "M-?") 'mark-paragraph)
  (global-set-key (kbd "C-h") 'delete-backward-char)
  (global-set-key (kbd "M-h") 'backward-kill-word)
  (setq w3m-home-page "http://www.google.com")
  ;; W3M Home Page
  (setq w3m-default-display-inline-images t)
  (setq w3m-default-toggle-inline-images t)
  ;; W3M default display images
  (setq w3m-command-arguments '("-cookie" "-F"))
  (setq w3m-use-cookies t)
  ;; W3M use cookies
  (setq browse-url-browser-function 'w3m-browse-url)
  ;; Browse url function use w3m
  (setq w3m-view-this-url-new-session-in-background t)
  ;; W3M view url new session in background
  (setq compilation-scroll-output t)
  (ansi-color-for-comint-mode-on)
  (setq-default c-basic-offset 4)
  (setq helm-buffers-fuzzy-matching t)

  (setq user-mail-address	"fedor.shamakhov@gmail.com"
        user-full-name	"Fedor Shamakhov")

  (setq gnus-secondary-select-methods
        '(
          (nnimap "gmail"
                  (nnimap-address "imap.gmail.com")
                  (nnimap-server-port 993)
                  (nnimap-stream ssl)
                  (nnir-search-engine imap)
                  (nnimap-authinfo-file "~/.authinfo.gpg"))
          (nnimap "yandex"
                  (nnimap-address "imap.yandex.ru")
                  (nnimap-server-port 993)
                  (nnimap-stream ssl)
                  (nnir-search-engine imap)
                  (nnimap-authinfo-file "~/.authinfo.gpg"))
          ))

  (setq gnus-parameters
      '(("nnimap gmail:INBOX"
         (display . all)
         (posting-style
          (name "Fedor Shamakhov")
          (address "fedor.shamakhov@gmail.com")
          (signature-file "~/.signature-fedor"))
         (expiry-target . delete))
        ("nnimap gmail:[Gmail]/.*"
         (display . all)
         (posting-style
          (name "Fedor Shamakhov")
          (address "fedor.shamakhov@gmail.com")
          (signature-file "~/.signature-fedor"))
         (expiry-wait . never))
        ("nnimap yandex:INBOX"
         (display . all)
         (posting-style
          (name "Fedor Shamakhov")
          (address "shamakhov.fyodor@yandex.ru")
          (signature-file "~/.signature-yandex"))
         (expiry-target . delete))
         ("nnimap yandex:[Yandex]/.*"
          (display . all)
          (posting-style
           (name "Shamakhov Fyodor")
           (address "shamakhov.fyodor@yandex.ru")
           (signature-file "~/.signature-yandex"))
          (expiry-wait . never))))

  ;; Send email via Gmail:
  (setq message-send-mail-function 'smtpmail-send-it
        smtpmail-default-smtp-server "smtp.gmail.com")

  (setq gnus-message-archive-method '(nnimap "imap.gmail.com")
        gnus-message-archive-group "[Gmail]/Sent Mail")

  ;; set return email address based on incoming email address
  (setq gnus-posting-styles
        '(((header "to" "fedor.shamakhov@gmail.com")
           (address "fedor.shamakhov@gmail.com"))
          ((header "to" "electron160zeptocoulomb@gmail.com")
           (address "electron160zeptocoulomb@gmail.com"))
          ((header "to" "shamakhov.fyodor@yandex.ru")
           (address "shamakhov.fyodor@yandex.ru"))))

  ;; store email in ~/gmail directory
  (setq nnml-directory "~/mail")
  (setq message-directory "~/mail")

  (setq browse-url-browser-function 'w3m-browse-url)
  (autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
  ;; optional keyboard short-cut
  (global-set-key "\C-xm" 'browse-url-at-point)
  (setq browse-url-browser-function 'w3m-browse-url)
  (autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
  (setq w3m-use-title-buffer-name t)

  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (add-hook 'gnus-group-mode-hook 'gnus-topic-mode)
  (projectile-global-mode)
  (setq projectile-completion-system 'helm)
  (helm-projectile-on)
  (require 'helm)
  (require 'w3m)
  (require 'w3m-load)
  (add-hook 'eshell-mode-hook
            #'(lambda ()
                (define-key eshell-mode-map (kbd "M-l")  'helm-eshell-history)))

;;; Save current position to mark ring
  (add-hook 'helm-goto-line-before-hook 'helm-save-current-pos-to-mark-ring)
  (when (executable-find "curl")
    (setq helm-google-suggest-use-curl-p t))

  (defun w3m-new-tab ()
    (interactive)
    (w3m-copy-buffer nil nil nil t))

  (defun w3m-browse-url-new-tab (url &optional new-session)
    (interactive)
    (w3m-new-tab)
    (w3m-browse-url url))

  (setq browse-url-browser-function 'w3m-browse-url-new-tab)

  (defun w3m-download-with-wget (loc)
    (interactive "DSave to: ")
    (let ((url (or (w3m-anchor) (w3m-image))))
      (if url
          (let ((proc (start-process "wget" (format "*wget %s*" url)
                                     "wget" "--passive-ftp" "-nv"
                                     "-P" (expand-file-name loc) url)))
            (with-current-buffer (process-buffer proc)
              (erase-buffer))
            (set-process-sentinel proc (lambda (proc str)
                                         (message "wget download done"))))
        (message "Nothing to get"))))

  (defun w3m-download-with-curl (loc)
    (define-key w3m-mode-map "c"
      (lambda (dir)
        (interactive "DSave to: ")
        (cd dir)
        (start-process "curl" "*curl*" "curl.exe" "-O" "-s" (w3m-anchor)))))

  (defun w3m-copy-url-at-point ()
    (interactive)
    (let ((url (w3m-anchor)))
      (if (w3m-url-valid url)
          (kill-new (w3m-anchor))
        (message "No URL at point!"))))

  (add-hook 'w3m-mode-hook
            (lambda ()
              (local-set-key "\M-W" 'w3m-copy-url-at-point)))

  (defun google-suggest ()
    "Search `w3m-search-default-engine' with google completion canditates."
    (interactive)
    (w3m-search w3m-search-default-engine
                (completing-read  "Google search: "
                                  (dynamic-completion-table
                                   'google-suggest-aux))))

  (defun google-suggest-aux (input)
    (with-temp-buffer
      (insert
       (shell-command-to-string
        (format "w3m -dump_source %s"
                (shell-quote-argument
                 (format
                  "http://www.google.com/complete/search?hl=en&js=true&qu=%s"
                  input)))))
      (read
       (replace-regexp-in-string "," ""
                                 (progn
                                   (goto-char (point-min))
                                   (re-search-forward "\(" (point-max) t 2)
                                   (backward-char 1)
                                   (forward-sexp)
                                   (buffer-substring-no-properties
                                    (1- (match-end 0)) (point)))))))

  ;;The following code binds f to a variant of isearch which finds links only. RET will exit isearch and open the new site.
  (defvar w3m-isearch-links-do-wrap nil
    "Used internally for fast search wrapping.")

  (defun w3m-isearch-links (&optional regexp)
    (interactive "P")
    (let ((isearch-wrap-function
     #'(lambda ()
         (setq w3m-isearch-links-do-wrap nil)
         (if isearch-forward
       (goto-char (window-start))
     (goto-char (window-end)))))
    (isearch-search-fun-function
     #'(lambda () 'w3m-isearch-links-search-fun))
    post-command-hook   ;inhibit link echoing
    do-follow-link
    (isearch-mode-end-hook
     (list  #'(lambda nil
          (when (and (not isearch-mode-end-hook-quit)
         (w3m-anchor))
      (setq do-follow-link t))))))
      (setq w3m-isearch-links-do-wrap t)
      (isearch-mode t
        regexp
        ;; fast wrap
        #'(lambda nil
      (if isearch-success
          (setq w3m-isearch-links-do-wrap t)
        (when w3m-isearch-links-do-wrap
          (setq w3m-isearch-links-do-wrap nil)
          (setq isearch-forward
          (not isearch-forward))
          (isearch-repeat isearch-forward))))
        t)
      (when do-follow-link
  (w3m-view-this-url))))

  (defun w3m-isearch-links-search-fun (string &optional bound no-error)
    (let* (isearch-search-fun-function
     (search-fun  (isearch-search-fun))
     error
     (bound  (if isearch-forward
           (max (or bound 0)
          (window-end))
         (min (or bound (window-start))
        (window-start)))))
      (condition-case err
    (while (and (apply search-fun (list string bound))
          (not (w3m-anchor (point)))))
  (error (setq error err)))
      (if error
    (if (not no-error)
        (signal (car error) (cadr error)))
    (point))))

  (defun my-w3m-switch-to-buffer (arg)
    "Select the ARG'th w3m buffer."
    (interactive "p")
    (let (buf)
      (if (= arg 0)
          (setq arg 10)
        (setq arg (1- arg)))
      (if (and (> arg -1) (setq buf (nth arg (w3m-list-buffers))))
          (progn
            (switch-to-buffer buf)
            (run-hooks 'w3m-select-buffer-hook)
            (w3m-select-buffer-update))
        (message "No such buffer!"))))
  (add-hook 'w3m-mode-hook (lambda () (define-key w3m-mode-map (kbd "C-x b") nil)))

  (add-hook 'w3m-mode-hook
            (lambda ()
              (dolist (bufnum '(0 1 2 3 4 5 6 7 8 9))
                (let* ((bufstr (number-to-string bufnum))
                       (funcname (concat "my-w3m-switch-to-buffer-" bufstr)))
                  (eval `(defun ,(intern funcname) ()
                           (interactive)
                           (my-w3m-switch-to-buffer ,bufnum)))
                  (define-key w3m-mode-map bufstr
                    (intern funcname))))))
  (defadvice w3m-modeline-title (around my-w3m-modeline-title)
    "prevent original function from running; cleanup remnants"
    (setq w3m-modeline-separator ""
          w3m-modeline-title-string ""))

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(comint-completion-autolist t)
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
