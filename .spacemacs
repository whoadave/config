;; -*- mode: dotspacemacs -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     nginx
     csv
     (shell :variables shell-default-term-shell "/bin/zsh")
     deft
     git
     html
     javascript
     markdown
     org
     rcirc
     react
     restclient
     ruby-on-rails
     themes-megapack
     sql
     twitter
     (elfeed :variables rmh-elfeed-org-files (list "~/icloud/feeds.org"))
     (auto-completion :variables
                         auto-completion-enable-help-tooltip t)
     ;; auto-completion
     ;; clojure
     ;; colors
     ;; latex
     ;; elm
     ;; chrome
     ;; erc
     )
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progess in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to a .PNG file.
   ;; If the value is nil then no banner is displayed.
   ;; dotspacemacs-startup-banner 'official
   dotspacemacs-startup-banner 'official
   ;; t if you always want to see the changelog at startup
   dotspacemacs-always-show-changelog t
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   ;; dotspacemacs-themes ' (atom-one-dark zenburn base16-ocean-dark)
   dotspacemacs-themes '(hc-zenburn base16-oceanicnext-dark)
   ;; dotspacemacs-themes '(zenburn)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("DejaVu Sans Mono"
                               :size 14
                               :width normal
                               :powerline-scale 1)

   ;; dotspacemacs-default-font '("SF Mono"
   ;;                             :size 16
   ;;                             :weight Regular
   ;;                             :width normal
   ;;                             :powerline-scale 1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   ;; dotspacemacs-command-key ":"
   ;; If non nil the paste micro-state is enabled. While enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state t
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols nil
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode t
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil
   dotspacemacs-elpa-https nil
   )
   ;; User initialization goes here
   ;; (add-to-list 'load-path "~/.emacs.d/private/twittering-mode")
   ;; (add-to-list 'load-path "~/.emacs.d/private/android-mode")
   ;; (load "~/.emacs.d/private/react-mode/react.el")
   ;; (load "~/.emacs.d/private/hackernews.el/hackernews.el")
)

(defun dotspacemacs/user-config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."
  (setq powerline-default-separator 'nil)
  (spaceline-compile)
  ;; aliases
  (defalias 'ff 'find-file)
  (defalias 'ffow 'find-file-other-window)
  (defalias 'l 'ls)
  ;; (spacemacs/toggle-line-numbers) ;; enable line numbers
  (setq-default dotspacemacs-line-numbers t)

  ;; Less coarse undo via evil.  More close to vim style
  (setq evil-want-fine-undo t)

  ;; disable C-x C-c from closing all of emacs
  (global-set-key (kbd "C-x C-c") 'nil)

  ;; Capital :W writes to file like :w
  (evil-ex-define-cmd "W" 'evil-write)

  ;; Fill column indicator at L80
  (setq fci-rule-width 6)
  (setq fci-rule-color "#8faf9f")
  (add-hook 'js2-mode-hook 'fci-mode)
  (add-hook 'web-mode-hook 'fci-mode)
  (add-hook 'scss-mode-hook 'fci-mode)
  (add-hook 'python-mode-hook 'fci-mode)
  (add-hook 'javascript-mode-hook 'fci-mode)
  (add-hook 'markdown-mode-hook 'fci-mode)
  (add-hook 'js-mode-hook 'fci-mode)
  (add-hook 'org-mode-hook 'fci-mode)
  (add-hook 'ruby-mode-hook 'fci-mode)
  (add-hook 'react-mode-hook 'fci-mode)

  ;; Indenting guide
  (indent-guide-global-mode)

  (setq-default
   ;; js2-mode
   js2-basic-offset 2
   react-mode-offset 2
   ;; web-mode
   css-indent-offset 2
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2)

  (with-eval-after-load 'web-mode
    (add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil)))

  ;; ibuffer
  (evil-set-initial-state 'ibuffer-mode 'normal)

  ;; Indentation from
  ;; http://blog.binchen.org/posts/easy-indentation-setup-in-emacs-for-web-development.html
  (defun my-setup-indent (n)
    ;; web development
    (setq coffee-tab-width n) ; coffeescript
    (setq react-tab-width n) ; coffeescript
    (setq javascript-indent-level n) ; javascript-mode
    (setq js-indent-level n) ; js-mode
    (setq js2-basic-offset n) ; js2-mode
    (setq web-mode-markup-indent-offset n) ; web-mode, html tag in html file
    (setq web-mode-css-indent-offset n) ; web-mode, css in html file
    (setq web-mode-code-indent-offset n) ; web-mode, js code in html file
    (setq css-indent-offset n) ; css-mode
    )

  (defun my-office-code-style ()
    (interactive)
    (message "Office code style!")
    (setq indent-tabs-mode t) ; use tab instead of space
    (my-setup-indent 4) ; indent 4 spaces width
    )

  (defun my-personal-code-style ()
    (interactive)
    (message "Indentation set to two")
    (setq indent-tabs-mode nil) ; use space instead of tab
    (my-setup-indent 2) ; indent 2 spaces width
    )

  ;; call indentation
  (my-personal-code-style)

  ;; Deft mode
  (setq deft-extensions '("org" "txt" "tex" "sql"))
  (setq deft-directory "~/icloud/notes")

  (global-set-key "\C-x\C-b" 'ido-switch-buffer)

  ;; For storing erc passwords
  ;; (require 'erc-services)
  ;; (erc-services-mode 1)

  ;; (setq erc-prompt-for-nickserv-password nil)
  ;; (setq erc-nickserv-passwords
  ;;       `((freenode
  ;;          (("jmfurlott" . ,freenode-pass)))
  ;;         ))

  ;; (defmacro erc-autojoin (&rest args)
  ;;   `(add-hook 'erc-after-connect
  ;;              '(lambda (server nick)
  ;;                 (cond
  ;;                  ,@(mapcar (lambda (servers+channels)
  ;;                              (let ((servers (car servers+channels))
  ;;                                    (channels (cdr servers+channels)))
  ;;                                `((member erc-session-server ',servers)
  ;;                                  (mapc 'erc-join-channel ',channels))))
  ;;                            args)))))
  ;; (erc-autojoin
  ;;   (("irc.freenode.net")
  ;;    "reactjs" "emacs" "postgresql" "Node.js" "programming"))
  (setq erc-hide-list '("JOIN" "PART" "QUIT"))

  ;; now playing
  (defun np ()
  (do-applescript
   "tell application \"iTunes\"
           set currentTrack to the current track
           set artist_name to the artist of currentTrack
           set song_title to the name of currentTrack
           return artist_name & \" - \" & song_title
        end tell"))

  ;; now playing next track
  (defun npn ()
    (do-applescript
      "tell application \"iTunes\"
	       next track
       end tell")
    )

  (add-hook 'js2-mode-hook    'subword-mode)
  (add-hook 'react-mode-hook    'subword-mode)
  (add-hook 'web-mode-hook    'subword-mode)

  (setq sql-connection-alist
        '(("localhost"
           (sql-product 'postgres)
           (sql-user "postgres")
           (sql-password "password")
           (sql-server "localhost")
           (sql-database "ravti-api"))))
)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/icloud/notes/2017_04_27-BaOS.org")))
 '(package-selected-packages
   (quote
    (twittering-mode winum solarized-theme restclient-helm ob-restclient madhat2r-theme fuzzy company-restclient know-your-http-well docker nginx-mode csv-mode autothemer pug-mode minitest hide-comnt uuidgen org-projectile org-download ob-http livid-mode skewer-mode link-hint git-link eyebrowse evil-visual-mark-mode evil-unimpaired evil-ediff goto-chg undo-tree eshell-z org dumb-jump diminish darkokai-theme column-enforce-mode zonokai-theme zenburn-theme zen-and-art-theme xterm-color ws-butler window-numbering web-mode web-beautify volatile-highlights vi-tilde-fringe underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme stekene-theme sql-indent spacemacs-theme spaceline spacegray-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smooth-scrolling smeargle slim-mode shell-pop seti-theme scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reverse-theme restclient restart-emacs rcirc-notify rcirc-color rbenv rainbow-delimiters railscasts-theme purple-haze-theme projectile-rails rake inflections f professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el pastels-on-dark-theme paradox hydra spinner page-break-lines orgit organic-green-theme org-repo-todo org-present org-pomodoro alert log4e gntp org-plus-contrib org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme niflheim-theme neotree naquadah-theme mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minimal-theme material-theme markdown-toc markdown-mode majapahit-theme magit-gitflow lush-theme lorem-ipsum linum-relative light-soap-theme leuven-theme less-css-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc jbeans-theme jazz-theme jade-mode ir-black-theme inkpot-theme info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-gitignore request helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag haml-mode gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger gh-md gandalf-theme flx-ido flx flatui-theme flatland-theme firebelly-theme fill-column-indicator feature-mode farmhouse-theme fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit magit magit-popup git-commit with-editor evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-args evil-anzu anzu eval-sexp-fu highlight espresso-theme eshell-prompt-extras esh-help emmet-mode elfeed-web simple-httpd elfeed-org elfeed-goodies ace-jump-mode noflet powerline popwin elfeed dracula-theme django-theme deft define-word darktooth-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme company-web web-completion-data company-tern s dash-functional tern dash company-statistics company-quickhelp pos-tip company colorsarenice-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode clues-theme clean-aindent-mode chruby cherry-blossom-theme busybee-theme bundler inf-ruby buffer-move bubbleberry-theme bracketed-paste birds-of-paradise-plus-theme badwolf-theme auto-yasnippet yasnippet auto-highlight-symbol apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core async ac-ispell auto-complete popup quelpa package-build use-package which-key bind-key bind-map evil hc-zenburn-theme)))
 '(projectile-use-git-grep t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "#DCDCCC" :background "#313131")))))
