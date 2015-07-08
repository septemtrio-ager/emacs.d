;;
;;; ido.elの設定
;;

;; ===================================================================

;; 【参考】
;;

;; ===================================================================

(el-get-bundle abo-abo/ido-occasional)
(el-get-bundle ido-vertical-mode)

;;; このときidoが使うwindowの高さは大きくした方がいい
(setq ido-max-window-height 0.75)

;;; あいまいマッチは入れておこう
(setq ido-enable-flex-matching t)
(ido-mode 1)

(ido-vertical-mode 1)

;; C-n/C-pで選択できるようにする
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(ignore-errors (ido-vertical-mode 1))


