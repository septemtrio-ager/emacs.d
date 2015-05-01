;;
;;; 基本設定
;;

;;; 日本語を utf-8 に統一
(set-language-environment "Japanese")
(setq default-buffer-file-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(prefer-coding-system 'utf-8)



;; スクリーンの最大化
(set-frame-parameter nil 'fullscreen 'maximized)



;;; yes/no を y/n とする。
(fset 'yes-or-no-p 'y-or-n-p)



;;; 終了時に自動でプロセスをkill
(setq process-kill-without-query t)



;;; ツールバー非表示
(tool-bar-mode -1)



;; スタートアップを非表示にする
(setq inhibit-startup-screen t)



;;; スクロールを1行ずつにする
(setq scroll-conservatively 35
      scroll-margin 0
      scroll-step 1)



;;ファイル名の補完で大文字小文字の識別をしない
(setq completion-ignore-case t)



;;;; キャレットが '(' や ')' の直後にある場合に対応する括弧を強調
(show-paren-mode t)



;;; Emacs サーバを起動する
;; R だと edit や fix を実行する時に必要
(when (require 'server nil t)
  (if (not (server-running-p))
      (server-start)))



;;; ウィンドウの透過度を変更する
(if window-system (progn
   (set-background-color "Black")
   (set-foreground-color "LightGray")
   (set-cursor-color "Gray")
   (set-frame-parameter nil 'alpha 80)
   ))



;;; 現在行を目立たせる
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "#16160e"))
    (((class color)
      (background light))
     (:background "#16160e"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)



;;; タイトルバーにファイルのフルパス表示
(setq frame-title-format
      (format "- Emacs@%s - %%f" (system-name)))



;; モードラインに行番号表示
(line-number-mode t)



;; モードラインに列番号表示
(column-number-mode t)
