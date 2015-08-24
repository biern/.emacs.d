(setq elpy-rpc-python-command "~/.emacs.d/venv/bin/python")
(setq elpy-rpc-python-command "~/.emacs.d/venv3/bin/python")
(setq python-check-command "~/.emacs.d/venv3/bin/flake8")

(elpy-enable)
(elpy-use-ipython)

(global-set-key (kbd "C-.") 'elpy-goto-definition)
(global-set-key (kbd "C-,") 'pop-tag-mark)

(defun annotate-pdb ()
  (interactive)
  (highlight-lines-matching-regexp "import pdb")
  (highlight-lines-matching-regexp "pdb.set_trace()"))
(add-hook 'python-mode-hook 'annotate-pdb)

(defun python-add-breakpoint ()
  (interactive)
  (back-to-indentation)
  (newline-and-indent)
  (indent-for-tab-command)
  (previous-line)
  (indent-for-tab-command)
  (insert "import ipdb; ipdb.set_trace()")
  (highlight-lines-matching-regexp "^[ 	]*import ipdb; ipdb.set_trace()"))
(define-key python-mode-map (kbd "C-c d") 'python-add-breakpoint)


(defun python-add-pytest-breakpoint ()
  (interactive)
  (back-to-indentation)
  (newline-and-indent)
  (indent-for-tab-command)
  (previous-line)
  (indent-for-tab-command)
  (insert "import pytest; pytest.set_trace()")
  (highlight-lines-matching-regexp "^[ 	]*pytest.set_trace()"))
(define-key python-mode-map (kbd "C-c b") 'python-add-pytest-breakpoint)
