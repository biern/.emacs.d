(setq elpy-rpc-python-command "~/.emacs.d/venv/bin/python")
(setq python-check-command "~/.emacs.d/venv/bin/flake8")

(elpy-enable)
(elpy-use-ipython)

(global-set-key (kbd "C-.") 'elpy-goto-definition)
(global-set-key (kbd "C-,") 'pop-tag-mark)

(define-skeleton py2-basic
  "Basic python2.* skeleton"
  nil
  "# -*- coding: utf-8 -*-\n\n")

(define-auto-insert "\\.\\(py\\)\\'" 'py2-basic)

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
