;;; packages.el --- ergoemacs Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages which
;; require an initialization must be listed explicitly in the list.
(setq ergoemacs-packages
    '(
      buffer-move
      ;;(ergoemacs-mode :location elpa)
      (ergoemacs-mode :location elpa)
      ein
      auctex-latexmk
      ))

;; List of packages to exclude.
(setq ergoemacs-excluded-packages '())

;; For each package, define a function ergoemacs/init-<package-name>
;;
(defun ergoemacs/init-buffer-move ()
  (use-package buffer-move)
  )

(defun ergoemacs/init-ergoemacs-mode ()
  ;;(use-package ergoemacs-mode)
    ;; :init
    ;; (global-set-key (kbd "C-SPC") 'set-mark-command)
    ;; :config
    ;; (global-set-key (kbd "C-SPC") 'set-mark-command)
    ;; )
                                        ; )
  (setq TeX-source-correlate-mode t)
  (setq TeX-source-correlate-start-server t)
  (setq TeX-source-correlate-method 'synctex)
  (setq TeX-view-program-list
        '(("Okular" "okular --unique %o#src:%n`pwd`/./%b")
          ("Skim" "displayline -b -g %n %o %b")
          ("Zathura"
           ("zathura %o"
            (mode-io-correlate
             " --synctex-forward %n:0:%b -x \"emacsclient +%{line} %{input}\"")))))
)

(defun ergoemacs/init-ein ()
    (use-package buffer-move)
)

(defun ergoemacs/post-init-ergoemacs-mode ()
  (setq ergoemacs-theme nil) ;; Uses Standard Ergoemacs keyboard theme
  (setq ergoemacs-keyboard-layout "us") ;; Assumes QWERTY keyboard layout
  (global-set-key (kbd "C-SPC") 'set-mark-command)
  ;; (setq ergoemacs-use-mac-command-as-meta t)
  )

(defun ergoemacs/pre-init-ergoemacs-mode ()
  (global-set-key (kbd "C-l") 'select-current-line)
  (global-set-key (kbd "C-SPC") 'set-mark-command)
)
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package

