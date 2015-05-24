;;
;;; プログラミング環境の共通設定
;;

;;; 改行と同時にインデントする
;;
;; smart-newline.elを利用するため使用しない
;;
;;(global-set-key "\C-m" 'newline-and-indent)
;;(global-set-key "\C-j" 'newline)



;; 閉じ括弧を自動で補完する
;; (electric-pair-mode 1)



;; カーソルの位置が何行目かを表示する
(line-number-mode t)



;; 空白を一度に削除する
(setq c-hungry-delete-key t)



;; 現在の関数名をモードラインに表示
;; (which-function-mode 1)
