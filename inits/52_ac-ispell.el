;;
;;; ac-ispell.elの設定
;;

(el-get-bundle ac-ispell)

(use-package ac-ispell
  
  :init (ac-ispell-setup)
  (add-hook 'prog-mode-hook 'ac-ispell-ac-setup)
  (add-hook 'text-mode-hook 'ac-ispell-ac-setup)

  :config
  (custom-set-variables
   '(ac-ispell-requires 4)
   '(ac-ispell-fuzzy-limit 2)))
