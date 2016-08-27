;;
;; setting for yascroll.el
;; https://github.com/m2ym/yascroll-el

;; ===================================================================

;; 【参考】内助のスクロールバー
;; http://shigemk2.hatenablog.com/entry/20120911/1347344412

;; ===================================================================

(el-get-bundle yascroll)

(use-package yascroll
  :defer t
  :init
  ;; まずは標準のスクロールバーを消す
  (scroll-bar-mode 0)
  
  :config
  (global-yascroll-bar-mode t))
