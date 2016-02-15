;;
;;; ido.elの設定
;;

;; ===================================================================

;; 【参考】
;;

;; ===================================================================

(el-get-bundle abo-abo/ido-occasional)

(use-package ido
  :defer t
  
  :config
  (use-package ido-occasional)
  
  ;; このときidoが使うwindowの高さは大きくした方がいい
  (setq ido-max-window-height 0.75)
  
  ;; あいまいマッチは入れておこう
  (setq ido-enable-flex-matching t))



(el-get-bundle ido-vertical-mode)

(use-package ido-vertical-mode
  :defer t
  :init
  (ignore-errors
    (ido-vertical-mode 1)
    ;; 2015/7/7最近の変更によりC-n/C-p
    ;; できなくなっていたのでで選択できるようにする
    (setq ido-vertical-define-keys 'C-n-and-C-p-only)))
