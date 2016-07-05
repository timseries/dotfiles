;keybindings
(global-set-key (kbd "\C-l") 'select-current-line)
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

;frame switching
(global-set-key (kbd "M-t")   'other-frame)
(global-set-key (kbd "S-<f2>")   'previous-multiframe-window)
(global-set-key (kbd "S-<f1>")   'next-multiframe-window)

;get the file's path
(global-set-key (kbd "M-y")   'my-put-file-name-on-clipboard)

;buffer switching
(global-set-key (kbd "M-s") 'ergoemacs-move-cursor-next-pane)

;other



