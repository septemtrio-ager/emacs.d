;;
;;; yascroll.elの設定
;;

;; ===================================================================

;; 【参考】内助のスクロールバー
;; http://shigemk2.hatenablog.com/entry/20120911/1347344412

;; ===================================================================

;; (el-get-bundle yascroll
  
;;   ;; まずは標準のスクロールバーを消す
;;   (scroll-bar-mode 0)

;;   (require 'yascroll)
;;   (global-yascroll-bar-mode t)
;;   )

(el-get-bundle yascroll)

(use-package yascroll
  :init
  (scroll-bar-mode 0)
  :config
  ;; まずは標準のスクロールバーを消す
  (global-yascroll-bar-mode t)
  )
