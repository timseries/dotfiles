;keybindings
(global-set-key (kbd "C-l") 'select-current-line)
(global-set-key (kbd "C-9")   'buf-move-right)
(global-set-key (kbd "C-8")   'buf-move-left)
(global-set-key (kbd "C-6")   'buf-move-up)
(global-set-key (kbd "C-7")   'buf-move-down)
(global-set-key (kbd "M-<up>")   'previous-buffer)
(global-set-key (kbd "M-<down>")   'next-buffer)
(global-set-key (kbd "C-r")     'comment-region)
(global-set-key (kbd "C-t")   'uncomment-region)
(global-set-key (kbd "C-<left>")     'previous-buffer)
(global-set-key (kbd "C-<right>")   'next-buffer)
(global-set-key (kbd "C-z") 'undo-tree-undo)

;frame switching
(global-set-key (kbd "M-t")   'other-frame)
(global-set-key (kbd "S-<f2>")   'previous-multiframe-window)
(global-set-key (kbd "S-<f1>")   'next-multiframe-window)

(global-set-key (kbd "M-y")   'my-put-file-name-on-clipboard)

;buffer switching
(global-set-key (kbd "M-s") 'ergoemacs-move-cursor-next-pane)

;terminal
(global-set-key (kbd "M-p") 'comint-previous-input)
;; (global-set-key (kbd "M-n") 'comint-next-input)

;other
(setq python-shell-interpreter "/home/tim/venvs/venv_enc/bin/ipython")
(setq savehist-mode nil)
(setq history-length 100)
(put 'minibuffer-history 'history-length 50)
(put 'evil-ex-history 'history-length 50)
(put 'kill-ring 'history-length 25)
