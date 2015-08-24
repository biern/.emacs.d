;;
;; Settings that affect all modes
;;

(defun enable_delete_trailing_whitespaces ()
  (interactive)
  (add-hook 'before-save-hook 'delete-trailing-whitespace)
  )

(defun disable_delete_trailing_whitespaces ()
  (interactive)
  (remove-hook 'before-save-hook 'delete-trailing-whitespace)
  )

(global-set-key (kbd "C-c C-w e") 'enable_delete_trailing_whitespaces)
(global-set-key (kbd "C-c C-w d") 'disable_delete_trailing_whitespaces)


(enable_delete_trailing_whitespaces)

(menu-bar-mode 0)
(tool-bar-mode 0)

(show-paren-mode 1)
(setq show-paren-delay 0)

;; Keep mouse out of the way
(mouse-avoidance-mode 'banish)

(setq x-select-enable-clipboard t)

(setq-default indent-tabs-mode nil)

(global-unset-key (kbd "C-t"))

(global-undo-tree-mode 1)

(auto-insert-mode t)
(setq auto-insert-query nil)

(savehist-mode 1)

(require 'auto-complete)
;; (global-auto-complete-mode)

;; Alternative window switching
;; move to left windnow
(global-set-key [M-left] 'windmove-left)
(global-set-key (kbd "C-c w b") 'windmove-left)
;; move to right window
(global-set-key [M-right] 'windmove-right)
(global-set-key (kbd "C-c w f") 'windmove-right)
;; move to upper window
(global-set-key [M-up] 'windmove-up)
(global-set-key (kbd "C-c w p") 'windmove-up)
;; move to downer window
(global-set-key [M-down] 'windmove-down)
(global-set-key (kbd "C-c w n") 'windmove-down)


(defun fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen
                       (if (frame-parameter nil 'fullscreen) nil 'fullboth)))

(global-set-key [f11] 'fullscreen)
