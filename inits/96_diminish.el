;;
;; setting for diminish.el
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
  ;;
  ;; M-x find-function
  ;;
  ;; でマイナーモードがどのファイルに定義されているか調べて
  ;; 
  ;; (safe-diminish "シンボルのモードが定義されてるファイル名" 'モードの正式名称 "変更後の表示")
  ;;
  ;; のように指定する
  
  (safe-diminish "helm" 'helm-mode)
  (safe-diminish "helm-multi-match" 'helm-migemo-mode)
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
  (safe-diminish "flyspell" 'flyspell-mode "FlyS")
  (safe-diminish "highlight-indentation" 'highlight-indentation-current-column-mode)
  (safe-diminish "ace-isearch" 'ace-isearch-mode)  
  
  ;; safe-diminishマクロがnilになってしまうので個別に設定
  ;; (diminish 'hs-minor-mode)
  
  )
