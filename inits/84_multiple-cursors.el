;;
;;;
;;

;; ===================================================================

;; 【参考】emacs multiple-cursors.el : Emacsは忍者だった！
;; http://rubikitch.com/2014/11/10/multiple-cursors/

;; ===================================================================

;; ===================================================================

;; 【参考】multiple-cursors.el を使おう
;; http://nishikawasasaki.hatenablog.com/entry/2012/12/31/094349

;; ===================================================================

(el-get-bundle multiple-cursors

  (require 'multiple-cursors)
  (defun mc/edit-lines-or-string-rectangle (s e)
    "C-x r tで同じ桁の場合にmc/edit-lines (C-u M-x mc/mark-all-dwim)"
    (interactive "r")
    (if (eq (save-excursion (goto-char s) (current-column))
	    (save-excursion (goto-char e) (current-column)))
	(call-interactively 'mc/edit-lines)
      (call-interactively 'string-rectangle)))
  (global-set-key (kbd "C-x r t") 'mc/edit-lines-or-string-rectangle)

  (defun mc/mark-all-dwim-or-mark-sexp (arg)
    "C-u C-M-SPCでmc/mark-all-dwim, C-u C-u C-M-SPCでC-u M-x mc/mark-all-dwim"
    (interactive "p")
    (cl-case arg
      (16 (mc/mark-all-dwim t))
      (4 (mc/mark-all-dwim nil))
      (1 (mark-sexp 1))))
  
  (global-set-key (kbd "C-M-SPC") 'mc/mark-all-dwim-or-mark-sexp)
  
  )
