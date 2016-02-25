;;
;;; emacs-realtime-markdown-viewer.elの設定
;;

(el-get-bundle ahyatt/emacs-websocket)
(el-get-bundle syohex/emacs-realtime-markdown-viewer)
;; (el-get-bundle gongo/emacs-realtime-markdown-viewer)

(use-package realtime-markdown-viewer
  :defer t
  :config
  (setq rtmv:lang 'ruby))
