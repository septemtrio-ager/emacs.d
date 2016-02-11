;;
;;; which-key.elの設定
;;

;; ===================================================================

;; 【参考】次のキー操作をよりわかりやすく教えてくれるぞ！
;; http://rubikitch.com/2015/09/14/which-key/

;; ===================================================================

;; (el-get-bundle which-key

;;   (require 'which-key)
;;   (which-key-mode 1)
  
;;   ;; which-key発動までの時間を設定
;;   (setq which-key-idle-delay 1.0) 
  
;;   ;; 右端に表示するようにする
;;   (which-key-setup-side-window-right)
  
;;   )

(el-get-bundle which-key)

(use-package which-key
  :disabled t
  :defer t
  :init
  (which-key-mode 1)
    
  :config
  
  ;; which-key発動までの時間を設定
  (setq which-key-idle-delay 1.0) 
  
  ;; 右端に表示するようにする
  (which-key-setup-side-window-right)
  )
