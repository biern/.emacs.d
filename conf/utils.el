(require 'sudo-save)

(auto-insert-mode)

(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)

(setq popwin:special-display-config (remove '(compilation-mode :noselect t) popwin:special-display-config))
(setq popwin:special-display-config (remove '(grep-mode :noselect t) popwin:special-display-config))




(push '("*Occur*" :width 0.3 :position right) popwin:special-display-config)
(push '(" *undo-tree*" :width 0.3 :position right) popwin:special-display-config)
(push '("*jedi:doc*" :noselect t) popwin:special-display-config)
(push '("*Ido Completions*" :noselect t) popwin:special-display-config)
(push '("*Completions*" :noselect t) popwin:special-display-config)

(require 'yasnippet)

(require 'uniquify)
