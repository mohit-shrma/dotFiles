(setq load-path  (cons (expand-file-name "~/.emacs-lisp/") load-path))
(setq x-select-enable-clipboard t)
(require 'color-theme)
    (color-theme-initialize)
    (color-theme-tty-dark)
(add-to-list 'load-path "~/Downloads/matlab-emacs/matlab-emacs/matlab-emacs")
(require 'matlab-load)
(require 'column-marker)
(require 'linum)
(setq path-to-ctags "/usr/bin/ctags") ;; <- your ctags path here
(defun create-ctags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (shell-command
   (format "%s -f %s/TAGS -e -R %s" path-to-ctags dir-name (directory-file-name dir-name)))
  )

(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (eshell-command 
   (format "find \"%s\" -type f -name \"*.[ch]\" | etags -" dir-name)))

(require 'hideshow-org)
(global-set-key "\C-ch" 'hs-org/minor-mode)

(defun toggle-selective-display (column)
      (interactive "P")
      (set-selective-display
       (or column
           (unless selective-display
             (1+ (current-column))))))

(defun toggle-hiding (column)
      (interactive "P")
      (if hs-minor-mode
          (if (condition-case nil
                  (hs-toggle-hiding)
                (error t))
              (hs-show-all))
        (toggle-selective-display column)))

(load-library "hideshow")
(global-set-key (kbd "C-+") 'toggle-hiding)
(global-set-key (kbd "C-\\") 'toggle-selective-display)
(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'lisp-mode-hook       'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)

