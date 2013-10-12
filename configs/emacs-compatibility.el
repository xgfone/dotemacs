
;;; emacs-compatibility.el

;;{{{ =========================================================================
;; Below 24, emacs doesn't have the symbol 'defvar-local'. Here define one.
;; But it is copied from 'subr.el' in emacs 24.3.
(if (version< emacs-version "24.0.0")
(defmacro defvar-local (var val &optional docstring)
  "Define VAR as a buffer-local variable with default value VAL.
Like `defvar' but additionally marks the variable as being automatically
buffer-local wherever it is set."
  (declare (debug defvar) (doc-string 3))
  ;; Can't use backquote here, it's too early in the bootstrap.
  (list 'progn (list 'defvar var val docstring)
        (list 'make-variable-buffer-local (list 'quote var)))))
;;}}} ================================== END ==================================

(provide 'emacs-compatibily)
;;; emacs-compatibily.el ends here
