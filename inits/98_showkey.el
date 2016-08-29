;;
;; setting for showkey.el
;; https://www.emacswiki.org/emacs/showkey.el

;; ===================================================================

;; 【参考】キー操作とコマンドの履歴を表示する
;; http://rubikitch.com/tag/m-x-showkey-log-mode/

;; ===================================================================

(el-get-bundle showkey)

(use-package showkey
  :defer t
  :config
  (push '(font . "Ricty-13") showkey-log-frame-alist))
