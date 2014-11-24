(require 'sudo-save)

(auto-insert-mode)

(require 'auto-complete)
(global-auto-complete-mode)

(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)

(setq popwin:special-display-config (remove '(compilation-mode :noselect t) popwin:special-display-config))

(push '("*Occur*" :width 0.3 :position right) popwin:special-display-config)
(push '(" *undo-tree*" :width 0.3 :position right) popwin:special-display-config)
(push '("*jedi:doc*" :noselect t) popwin:special-display-config)
(push '("*Ido Completions*" :noselect t) popwin:special-display-config)
(push '("*Completions*" :noselect t) popwin:special-display-config)

(require 'direx)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)

(require 'jedi-direx)
(eval-after-load "python"
  '(define-key python-mode-map "\C-cx" 'jedi-direx:pop-to-buffer))
