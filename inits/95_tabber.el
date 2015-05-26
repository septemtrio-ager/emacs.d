;;
;;; tabbar.elの設定
;;

;; ===================================================================

;; 【参考】年末なのでEmacsの設定ファイルを見直しますよ
;; http://ser1zw.hatenablog.com/entry/2012/12/31/022359

;; 【参考】Emacs にタブを付ける
;; http://www.muskmelon.jp/?p=928

;; ===================================================================

(el-get-bundle tabbar)

(require 'tabbar)

;; tabbarを有効にする
(tabbar-mode 1)

;; 左に表示されるボタンを無効化
(dolist (btn '(tabbar-buffer-home-button
	       tabbar-scroll-left-button
	       tabbar-scroll-right-button))
  (set btn (cons (cons "" nil)
		 (cons "" nil))))

;; グループ化しない
(setq tabbar-buffer-groups-function nil)

;; 「*」で始まるバッファをタブとして表示しない
(defun my-tabbar-buffer-list ()
  (delq nil
	(mapcar #'(lambda (b)
		    (cond
		     ;; Always include the current buffer.
		     ((eq (current-buffer) b) b)
		     ((buffer-file-name b) b)
		     ((char-equal ?\  (aref (buffer-name b) 0)) nil)
		     ((equal "*scratch*" (buffer-name b)) b)       ; *scratch*バッファは表示する
		     ((equal "*Open Recent*" (buffer-name b)) b)   ; *Open Recent*バッファは表示する
		     ((char-equal ?* (aref (buffer-name b) 0)) nil) ; それ以外の * で始まるバッファは表示しない
		     ((buffer-live-p b) b)))
		(buffer-list))))
(setq tabbar-buffer-list-function 'my-tabbar-buffer-list)

;; Ctrl-Tab, Ctrl-Shift-Tab でタブを切り替える
(dolist (func '(tabbar-mode tabbar-forward-tab tabbar-forward-group tabbar-backward-tab tabbar-backward-group))
  (autoload func "tabbar" "Tabs at the top of buffers and easy control-tab navigation"))
(defmacro defun-prefix-alt (name on-no-prefix on-prefix &optional do-always)
  `(defun ,name (arg)
     (interactive "P")
     ,do-always
     (if (equal nil arg)
	 ,on-no-prefix
       ,on-prefix)))
(defun-prefix-alt shk-tabbar-next (tabbar-forward-tab) (tabbar-forward-group) (tabbar-mode 1))
(defun-prefix-alt shk-tabbar-prev (tabbar-backward-tab) (tabbar-backward-group) (tabbar-mode 1))
(global-set-key [(control tab)] 'shk-tabbar-next)
(global-set-key [(control shift iso-lefttab)] 'shk-tabbar-prev)

;; ウインドウからはみ出たタブを省略して表示
(setq tabbar-auto-scroll-flag nil)

;; タブとタブの間の長さ
(setq tabbar-separator '(0.6))

;; 外観変更
;; (set-face-attribute
;;  'tabbar-default nil
;;  :family "Monaco"
;;  :background "#51B24C"
;;  :foreground "gray72"
;;  :height 0.8)

;; (set-face-attribute
;;  'tabbar-unselected nil
;;  :background "#51B24C"
;;  :foreground "grey72"
;;  :box '(:line-width 3 :color "#51B24C"))

;; (set-face-attribute
;;  'tabbar-selected nil
;;  :background "white"
;;  :foreground "gray28"
;;  :box '(:line-width 3 :color "white"))

;; (set-face-attribute
;;  'tabbar-button nil
;;  :box nil)

;; カスタマイズ設定

;; (set-face-attribute
;;  'tabbar-default nil
;;  :family "Monaco"
;;  :background "lightgreen"
;;  :foreground "#51B24C" ; gray72
;;  :height 0.8)
;; (set-face-attribute
;;  'tabbar-unselected nil
;;  :background "lightgreen"
;;  :foreground "#51B24C" ; gray72
;;  :box '(:line-width 3 :color "lightgreen"))
;; (set-face-attribute
;;  'tabbar-selected nil
;;  :background "white"
;;  :foreground "gray28"
;;  :box '(:line-width 3 :color "white")) ; white
;; (set-face-attribute
;;  'tabbar-button nil
;;  :box nil)

;; 設定しなおし

(set-face-attribute
 'tabbar-default nil
 :family "Monaco"
 :background "#51B24C"
 :foreground "gray72"
 :height 0.8)

(set-face-attribute
 'tabbar-unselected nil
 :background "#90ee90"
 :foreground "black"
 :box '(:line-width 3 :color "#90ee90"))

(set-face-attribute
 'tabbar-selected nil
 :background "white"
 :foreground "gray28"
 :box '(:line-width 3 :color "white"))

(set-face-attribute
 'tabbar-button nil
 :box nil)

(set-face-attribute
 'tabbar-modified nil
 :background "#90ee90"
 :foreground "#F1266F"
 :box '(:line-width 1 :color "#90ee90"))

(set-face-attribute
 'tabbar-separator nil
 :background "#CCCC99"
 :foreground "#CCCC99"
 )

;; tabbar-selected を太字で表示
(set-face-bold-p 'tabbar-selected t)

;; tabbar-modified を太字で表示
(set-face-bold-p 'tabbar-modified t)
