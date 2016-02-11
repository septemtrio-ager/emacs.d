;;
;;; ido.elの設定
;;

;; ===================================================================

;; 【参考】
;;

;; ===================================================================

(el-get-bundle abo-abo/ido-occasional)
(el-get-bundle ido-vertical-mode)

;; ;;; このときidoが使うwindowの高さは大きくした方がいい
;; (setq ido-max-window-height 0.75)

;; ;;; あいまいマッチは入れておこう
;; (setq ido-enable-flex-matching t)
;; (ido-mode 1)

;; (ignore-errors
;;   (ido-vertical-mode 1)
;;   ;; 2015/7/7最近の変更によりC-n/C-p
;;   ;; できなくなっていたのでで選択できるようにする
;;   (setq ido-vertical-define-keys 'C-n-and-C-p-only)
;;   )

(use-package ido
  :defer t
  :config
  ;; このときidoが使うwindowの高さは大きくした方がいい
  (setq ido-max-window-height 0.75)
  
  ;; あいまいマッチは入れておこう
  (setq ido-enable-flex-matching t)
  (ido-mode 1)
  )

(use-package ido-vertical-mode
  :defer t
  :config
  (ignore-errors
    (ido-vertical-mode 1)
    ;; 2015/7/7最近の変更によりC-n/C-p
    ;; できなくなっていたのでで選択できるようにする
    (setq ido-vertical-define-keys 'C-n-and-C-p-only)
    )
  )
