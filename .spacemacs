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
     html
     javascript
     csv
     windows-scripts
     javascript
     octave
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (auto-completion :variables auto-completion-private-snippets-directory)
     ;; better-defaults
     emacs-lisp
     ergoemacs
     (osx :variables osx-use-option-as-meta t)
     git
     (latex :variables latex-build-command "LaTeX")
     markdown
     python
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     smex
     syntax-checking
     yaml
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages
   '(
     ws-butler
     )
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
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light
                         solarized-light
                         solarized-dark
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 15
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
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
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
   dotspacemacs-fullscreen-at-startup t
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
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
  ;;(define-key window-numbering-keymap "\M-0" nil)
  (global-unset-key "\M-0")
  (global-set-key (kbd "M-0") 'delete-window)
  (global-set-key (kbd "M-;") 'isearch-forward)
  (global-set-key (kbd "M-Y") 'isearch-backward)
  (global-set-key (kbd "C-<SPC>") 'set-mark-command)

  '(ws-butler-mode t)
  ;; (auctex-latex-setup)
  )

(defun nothing())
(defun dotspacemacs/user-config ()
  "Configuration function for user code.
 This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  (push '("melpa-stable" . "stable.melpa.org/packages/") configuration-layer--elpa-archives)
  (push '(helm . "melpa-stable") package-pinned-packages)
  (require 'helm-bookmark)
  (setq python-shell-interpreter "/home/tim/venvs/venv_enc/bin/ipython")
  (define-key window-numbering-keymap "\M-0" nil)
  (define-key evil-emacs-state-map (kbd "C-z") nil)
  (global-set-key (kbd "M-0") 'delete-window)
  (global-set-key (kbd "C-l") 'select-current-line)
  (global-set-key (kbd "M-;") 'isearch-forward)
  (global-set-key (kbd "C-SPC") 'set-mark-command)
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
  (add-hook 'python-mode-hook (lambda ()
                                ;; (flycheck-mode 1)
                                ;; (semantic-mode 1)
                                (setq flycheck-checker 'python-flake8
                                      flycheck-checker-error-threshold 900
                                      flycheck-pylintrc "~/dotfiles/.pylintrc"
                                      flycheck-flake8-maximum-line-length 100))
                                (local-set-key (kbd "C-e") 'ein:pytools-eval-string-internal)
  )
  (require 'helm-bookmark)
  ;; (delete-selection-mode 1)
  (desktop-save-mode 1)
  (desktop-read)
  (which-key-mode -1)
  ;; (cua-mode 1)
  ;seems to fix runaway memory consumption
  (savehist-mode 0)

  ;disabe mouse clicking within emacs
  (define-key evil-normal-state-map (kbd "<down-mouse-1>") 'nothing)
  (dolist (mouse '("<down-mouse-1>" "<mouse-1>"))
    (global-unset-key (kbd mouse)))
  ;;(define-key ergoemacs-keymap "\C-SPC") 'helm-for-files)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(ergoemacs-mode t)
 '(package-selected-packages
   (quote
<<<<<<< Updated upstream
    (ergoemacs-mode deferred websocket yapfify yaml-mode winum which-key use-package toc-org spaceline restart-emacs pyvenv persp-mode orgit org-plus-contrib neotree move-text mmm-mode markdown-toc markdown-mode magit-gitflow live-py-mode link-hint js2-refactor info+ indent-guide hungry-delete highlight-indentation hide-comnt help-fns+ helm-projectile helm-make projectile helm-flx helm-company git-timemachine git-link fuzzy flycheck-pos-tip flycheck eyebrowse expand-region exec-path-from-shell evil-search-highlight-persist evil-nerd-commenter evil-mc evil-exchange dumb-jump diminish aggressive-indent adaptive-wrap ace-window ace-link avy packed anaconda-mode auctex company highlight smartparens magit magit-popup git-commit with-editor evil yasnippet helm helm-core async hydra f dash s js2-mode ws-butler window-numbering web-beautify volatile-highlights vi-tilde-fringe uuidgen undo-tree smex smeargle reveal-in-osx-finder rainbow-delimiters quelpa pytest pyenv-mode py-isort powerline pos-tip popwin pkg-info pip-requirements persistent-soft pcre2el pbcopy paradox osx-trash osx-dictionary org-bullets open-junk-file multiple-cursors macrostep lorem-ipsum livid-mode linum-relative launchctl json-mode js-doc ido-vertical-mode hy-mode hl-todo highlight-parentheses highlight-numbers helm-themes helm-swoop helm-pydoc helm-mode-manager helm-gitignore helm-descbinds helm-c-yasnippet helm-ag goto-chg google-translate golden-ratio gitconfig-mode gitattributes-mode git-messenger gh-md flx-ido fill-column-indicator fancy-battery evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-numbers evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav ein cython-mode csv-mode company-tern company-statistics company-auctex company-anaconda column-enforce-mode coffee-mode clean-aindent-mode buffer-move bracketed-paste bind-key auto-yasnippet auto-highlight-symbol auto-compile ace-jump-helm-line ac-ispell)))
 '(python-shell-interpreter "ipython")
 '(evil-want-Y-yank-to-eol nil)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (icicles zenburn-theme monokai-theme solarized-theme csv-mode powerline org markdown-mode projectile flycheck epl magit magit-popup git-commit ghub let-alist with-editor request-deferred websocket request deferred diminish bind-key packed anaconda-mode pythonic auto-complete avy auctex yasnippet company highlight iedit smartparens f dash evil goto-chg undo-tree helm helm-core async s hydra powershell web-beautify livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc company-tern dash-functional tern coffee-mode persistent-soft yapfify yaml-mode ws-butler window-numbering which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spacemacs-theme spaceline smex smeargle reveal-in-osx-finder restart-emacs rainbow-delimiters quelpa pyvenv pytest pyenv-mode py-isort popwin pip-requirements persp-mode pcre2el pbcopy paradox osx-trash osx-dictionary orgit org-plus-contrib org-bullets open-junk-file neotree move-text mmm-mode markdown-toc magit-gitflow macrostep lorem-ipsum live-py-mode linum-relative link-hint launchctl info+ indent-guide ido-vertical-mode hy-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md flycheck-pos-tip flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu ergoemacs-mode elisp-slime-nav ein dumb-jump cython-mode company-statistics company-auctex company-anaconda column-enforce-mode clean-aindent-mode buffer-move auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(require (quote helm-bookmark))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
    (web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode company-web web-completion-data request-deferred dash-functional tern iedit skewer-mode simple-httpd ergoemacs-mode deferred websocket yapfify yaml-mode winum which-key use-package toc-org spaceline restart-emacs pyvenv persp-mode orgit org-plus-contrib neotree move-text mmm-mode markdown-toc markdown-mode magit-gitflow live-py-mode link-hint js2-refactor info+ indent-guide hungry-delete highlight-indentation hide-comnt help-fns+ helm-projectile helm-make projectile helm-flx helm-company git-timemachine git-link fuzzy flycheck-pos-tip flycheck eyebrowse expand-region exec-path-from-shell evil-search-highlight-persist evil-nerd-commenter evil-mc evil-exchange dumb-jump diminish aggressive-indent adaptive-wrap ace-window ace-link avy packed anaconda-mode auctex company highlight smartparens magit magit-popup git-commit with-editor evil yasnippet helm helm-core async hydra f dash s js2-mode ws-butler window-numbering web-beautify volatile-highlights vi-tilde-fringe uuidgen undo-tree smex smeargle reveal-in-osx-finder rainbow-delimiters quelpa pytest pyenv-mode py-isort powerline pos-tip popwin pkg-info pip-requirements persistent-soft pcre2el pbcopy paradox osx-trash osx-dictionary org-bullets open-junk-file multiple-cursors macrostep lorem-ipsum livid-mode linum-relative launchctl json-mode js-doc ido-vertical-mode hy-mode hl-todo highlight-parentheses highlight-numbers helm-themes helm-swoop helm-pydoc helm-mode-manager helm-gitignore helm-descbinds helm-c-yasnippet helm-ag goto-chg google-translate golden-ratio gitconfig-mode gitattributes-mode git-messenger gh-md flx-ido fill-column-indicator fancy-battery evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-numbers evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav ein cython-mode csv-mode company-tern company-statistics company-auctex company-anaconda column-enforce-mode coffee-mode clean-aindent-mode buffer-move bracketed-paste bind-key auto-yasnippet auto-highlight-symbol auto-compile ace-jump-helm-line ac-ispell)))
 '(safe-local-variable-values (quote ((eval progn (pp-buffer) (indent-buffer)))))
 '(smex-prompt-string
   #("+Opt+A " 0 4
     (face ergoemacs-display-key-face)
     5 6
     (face ergoemacs-display-key-face)))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(weechat-color-list
   (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
