;; If you don't have MELPA in your package archives:

(global-auto-revert-mode t)
(setq-default column-number-mode t)
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 10
      kept-old-versions 10
      version-control t)
(setq auto-save-timeout 1) ; ten idle seconds
(defun save-buffer-if-visiting-file (&optional args)
   "Save the current buffer only if it is visiting a file"
	 (interactive)
	       (if (and (buffer-file-name) (buffer-modified-p))
			 (save-buffer args)))
(add-hook 'auto-save-hook 'save-buffer-if-visiting-file)

;; For easy window scrolling up and down.
(global-set-key "\M-n" 'scroll-up-line)
(global-set-key "\M-p" 'scroll-down-line)


;;http://www.emacswiki.org/emacs/AutoIndentation
(define-key global-map (kbd "RET") 'newline-and-indent)
(setq mac-command-modifier 'control)
;;Experimental
(global-set-key (kbd "C-<right>") 'other-window)
(global-set-key (kbd "M-1") 'other-window)

