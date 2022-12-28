((org-mode . ((eval . (setq-local project-root-path
                        ;; Find out what dir we're in, and ensure we have
                        ;; it in string format.
                        (file-name-directory
                         (let ((curdir (dir-locals-find-file "./")))
                                (if (stringp curdir)
                                    curdir
                                   (car curdir))))))
          ;; These two are important
          (eval . (setq-local org-roam-directory project-root-path))
          (eval . (setq-local org-roam-db-location (concat project-root-path ".org-roam.db")))
          ;; We load in some extra languages for convenience
          (eval . (org-babel-do-load-languages 'org-babel-load-languages
                               '((sql . t)
                                 (lisp . t)
                                 (nix . t)
                                 (bash . t)
                                 (sh . t)
                                 (sqlite . t)
                                 (org . t)
                                 (python . t)
                                 (R . t)
                                 (shell . t)
                                 emacs-lisp . nil))))))
