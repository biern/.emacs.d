;;; init.el ---

(require 'package)
(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "http://melpa.org/packages/") t)

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/libs")
(progn (cd "~/.emacs.d/libs")
       (normal-top-level-add-subdirs-to-load-path))

(load-file "~/.emacs.d/conf/global.el")
(load-file "~/.emacs.d/conf/ido.el")
(load-file "~/.emacs.d/conf/ibuffer.el")
(load-file "~/.emacs.d/conf/elpy.el")
(load-file "~/.emacs.d/conf/magit.el")
(load-file "~/.emacs.d/conf/tempbuf.el")
(load-file "~/.emacs.d/conf/utils.el")
(load-file "~/.emacs.d/conf/visuals.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying t)
 '(backup-directory-alist (quote ((".*" . "~/.emacs.backups"))))
 '(custom-safe-themes (quote ("2d16f85f22f1841390dfc1234bd5acfcce202d9bb1512aa8eabd0068051ac8c3" "49e5a7955b853f70d1fe751b2f896921398b273aa62f47bda961a45f80219581" default)))
 '(delete-selection-mode nil)
 '(desktop-load-locked-desktop t)
 '(desktop-restore-eager 10)
 '(desktop-save t)
 '(desktop-save-mode t)
 '(grep-command "egrep -nH -e ")
 '(grep-find-ignored-directories (quote ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" "migrations")))
 '(grep-find-template "find . <X> -type f <F> -exec egrep <C> -nH -e <R> {} +")
 '(mark-even-if-inactive t)
 '(org-agenda-files (quote ("~/magister/praca/wstęp.org")))
 ;; '(safe-local-variable-values (quote ((python-django-project-root . "~/printbox/PrintboxDemo/webapp") (python-django-project-root . "~/printbox/PrintboxDemo/webapp/") (python-django-settings-module . "printboxdemo.settings") (python-django-project-root . "~/photo/PrintboxDemo/webapp/"))))
 '(transient-mark-mode 1)
 '(uniquify-buffer-name-style (quote reverse) nil (uniquify))
 '(uniquify-ignore-buffers-re "^\\*")
 '(uniquify-separator "|"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'safe-local-variable-values
             '(elpy-rpc-python-command . "/home/marcin/.emacs.d/venv/bin/python"))
(add-to-list 'safe-local-variable-values
             '(elpy-rpc-python-command . "/home/marcin/.emacs.d/venv3/bin/python"))
