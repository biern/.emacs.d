(setq elpy-rpc-python-command "~/.emacs.d/venv/bin/python")
(setq python-check-command "~/.emacs.d/venv/bin/flake8")

(elpy-enable)
(elpy-use-ipython)

(global-set-key (kbd "C-.") 'elpy-goto-definition)
(global-set-key (kbd "C-,") 'pop-tag-mark)
