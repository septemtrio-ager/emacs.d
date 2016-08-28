;;
;; setting for ac-ispell.el
;; https://github.com/syohex/emacs-ac-ispell

(el-get-bundle ac-ispell)

(custom-set-variables
 '(ac-ispell-requires 4)
 '(ac-ispell-fuzzy-limit 2))

(eval-after-load "auto-complete"
  '(progn
     (ac-ispell-setup)))

(add-hook 'prog-mode-hook 'ac-ispell-ac-setup)
(add-hook 'text-mode-hook 'ac-ispell-ac-setup)
