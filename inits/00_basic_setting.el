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



;; フォントをRitcyに変更する
(add-to-list 'default-frame-alist '(font . "ricty-12"))
(custom-set-faces
 '(variable-pitch ((t (:family "Ricty"))))
 '(fixed-pitch ((t (:family "Ricty"))))
 )


;; スクリーンの最大化
(set-frame-parameter nil 'fullscreen 'maximized)



;;; yes/no を y/n とする。
(fset 'yes-or-no-p 'y-or-n-p)



;;; 終了時に自動でプロセスをkill
(defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
  "Prevent annoying \"Active processes exist\" query when you quit Emacs."
  (flet ((process-list ())) ad-do-it))



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
   (set-foreground-color "Black")
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



;; ===================================================================

;; 【高速化】Emacsのカーソル移動が重い？
;; http://rubikitch.com/2015/05/14/global-hl-line-mode-timer/

;; ===================================================================

;; タイマー関数を利用して現在行を目立たせる
;; (defun global-hl-line-timer-function ()
;;   (global-hl-line-unhighlight-all)
;;   (let ((global-hl-line-mode t))
;;     (global-hl-line-highlight)
;;     ))
;; (setq global-hl-line-timer
;;       (run-with-idle-timer 0.03 t 'global-hl-line-timer-function))



;;; タイトルバーにファイルのフルパス表示
(setq frame-title-format
      (format "- Emacs@%s - %%f" (system-name)))



;; モードラインに行番号表示
(line-number-mode t)



;; モードラインに列番号表示
(column-number-mode t)



;; カーソルの点滅設定

;; カーソル点滅速度の変更（デフォルトは0.5）
(setq blink-cursor-interval 0.15)
(setq blink-cursor-delay 2.0)
(blink-cursor-mode 1)
