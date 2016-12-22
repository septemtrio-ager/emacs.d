;;
;; setting for zoom-window
;; https://github.com/syohex/emacs-zoom-window

;; ===================================================================

;; 【参考】zoom-window:C-x 1を復元可能にする7つのメリット
;; http://emacs.rubikitch.com/zoom-window/

;; ===================================================================

(el-get-bundle zoom-window)

(use-package zoom-window
  :bind (("C-x 1" . my-zoom-window-zoom))
  :config
  (setq zoom-window-mode-line-color "#6C71C4")
  
  (defun my-zoom-window-zoom ()
    (interactive)
    (zoom-window-zoom)
    (powerline-reset)
    )
  )
