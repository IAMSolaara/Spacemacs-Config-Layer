(add-hook 'after-init-hook '(setq make-backup-file-name-function 'lorecast162/my-backup-file-name))
(setq auto-save-default nil)

(add-hook 'after-init-hook 'spacemacs/toggle-menu-bar-on)

(set-face-attribute 'default (selected-frame) :height 90)

(set-default 'truncate-lines t)
