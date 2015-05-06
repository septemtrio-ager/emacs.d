
;;
;;; twittering-mode.elの設定
;;

;; ===================================================================

;; 【参考】Ubuntuで使うTwitterクライアント（1）EmacsでTwitter
;; https://gihyo.jp/admin/serial/01/ubuntu-recipe/0187

;; ===================================================================

(el-get-bundle twittering-mode
  

  ;; twittering-modeでTwitterのTLを確認する
  (require 'twittering-mode)

  ;; GnuPGを利用してアクセストークンを暗号化して保存する
  (setq twittering-use-master-password t)


  ;; 【参考】twittering-mode でエラー
  ;; http://wp.hebon.net/emacs/?tag=twittering-mode

  ;; 【参考】 Mac OS X 10.10 (Yosemite) 上で twittering-mode を動かそうとしたら躓いたまとめ

  ;;http://d.hatena.ne.jp/cointoss/20141104/1415029315?_ga=1.180673895.1536729082.1425645803
  ;; M-x twitしたあとに「Failed to retrieve a request token」という
  ;; エラーが出たとき用。サーバーの証明書問題？なので証明書を検証しないようにする
  ;; (setq twittering-allow-insecure-server-cert t)



  ;; ユーザーインターフェースの設定
  (defun twittering-mode-hook-func ()
    (set-face-bold-p 'twittering-username-face t)
    (set-face-foreground 'twittering-uri-face "DeepSkyBlue3")

    ;; キーバインドの設定
    ;; "<"でバッファの先頭に移動する
    (define-key twittering-mode-map (kbd "<") 'my-beginning-of-buffer)

    ;; ">"でバッファの最後に移動する
    (define-key twittering-mode-map (kbd ">") 'my-end-of-buffer)

    ;; "C-c f"でカーソル下のTweetをFavoriteする
    (define-key twittering-mode-map (kbd "C-c f") 'twittering-favorite))

  ;; "?"でTwitteringModeのキーバインドを表示する
  (define-key twittering-mode-map "?" 'describe-bindings)

  (add-hook 'twittering-mode-hook 'twittering-mode-hook-func)


  ;;アイコンを表示
  (setq twittering-icon-mode t)
  )
