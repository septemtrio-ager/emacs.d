;;
;;; diminish.elの設定
;;

;; =========================================================

;; 【参考】指定したマイナーモードを表示しない(diminish篇)
;; http://qiita.com/tadsan/items/c859c5c04724cbda75fc

;; ==========================================================

(el-get-bundle diminish

  ;; safe-diminishマクロを定義する
  (defmacro safe-diminish (file mode &optional new-name)
    "https://github.com/larstvei/dot-emacs/blob/master/init.org"
    `(with-eval-after-load ,file
       (diminish ,mode ,new-name)))
  
  ;; safe-diminish マクロを利用して
  ;; 隠したいマイナーモードを指定する
  ;; (safe-diminish "表示を変更したいモード名" 'モードの正式名称 "変更後の表示")
  (safe-diminish "helm" 'helm-mode)
  (safe-diminish "undo-tree" 'undo-tree-mode)
  (safe-diminish "auto-complete" 'auto-complete-mode "AutoComplete")
  (safe-diminish "smooth-scroll" 'smooth-scroll-mode)
  (safe-diminish "magit-auto-revert-mode" 'magit-auto-revert-mode)
  (safe-diminish "rainbow-mode" 'rainbow-mode)
  (safe-diminish "auto-highlight-symbol" 'auto-highlight-symbol-mode)
  (safe-diminish "highlight-symbol" 'highlight-symbol-mode)
  (safe-diminish "smart-newline" 'smart-newline-mode)
  (safe-diminish "volatile-highlights" 'volatile-highlights-mode)
  (safe-diminish "smartparens" 'smartparens-mode)
  (safe-diminish "which-key" 'which-key-mode)
  (safe-diminish "abbrev" 'abbrev-mode)
  (safe-diminish "php-completion" 'php-completion-mode "PHP-Comp")
  
  ;; safe-diminishマクロがnilになってしまうので個別に設定
  (diminish 'hs-minor-mode)
      
  )
