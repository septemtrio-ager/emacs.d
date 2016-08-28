;;
;; setting for twittering-mode.el
;;

;; ===================================================================

;; 【参考】Ubuntuで使うTwitterクライアント（1）EmacsでTwitter
;; https://gihyo.jp/admin/serial/01/ubuntu-recipe/0187

;; ===================================================================

;; 新規ツイートをpostするときは
;; C-c C-s
;; で新しいpostを入力できる

(el-get-bundle twittering-mode)

(use-package twittering-mode

  :defer t
  
  ;; | キーバインド | 説明 
  ;; |:------------:|-------------------------|
  ;; | C-c C-s      | 新しいtweetを投稿       |
  ;; | C-c r        | カーソル下のtweetに返信 |
  ;; | C-c f        | カーソル下のtweetをfav  |
    
  :init
  ;; "<"でバッファの先頭に移動する
  (bind-key "<" 'my-beginning-of-buffer twittering-mode-map)
  
  ;; ">"でバッファの最後に移動する
  (bind-key ">" 'my-end-of-buffer twittering-mode-map)
  
  ;; "C-c f"でカーソル下のTweetをFavoriteする
  (bind-key "C-c f" 'twittering-favorite twittering-mode-map)
  
  ;; "C-c r"でカーソル下のTweeetに返信する
  (bind-key "C-c r" 'twittering-enter twittering-mode-map)
  
  ;; "?"でTwitteringModeのキーバインドを表示する
  (bind-key "?" 'describe-bindings twittering-mode-map)
  
  :config
  
  ;; GnuPGを利用してアクセストークンを暗号化して保存する
  (setq twittering-use-master-password t)
  
  ;;アイコンを表示
  (setq twittering-icon-mode t)
  
  ;; タイムラインの表示フォーマットを設定
  (setq twittering-status-format
  	(concat
  	 ;; "%FIELD-IF-NONZERO[%r\n]{relpy-name}"
	 
	 "%FOLD[ ]{%FACE[bold]{%RT{↺ %S retweeted\n}}}"
	 
  	 "%FOLD{%i %FACE[bold]{%S} %FACE[font-lock-comment-face]{@%s} "
  	 
  	 "%FACE[font-lock-comment-face]{%@{}}\n"
	 
  	 "%FOLD[ ]{%T}}\n\n"

  	 ;; "%FACE[font-lock-warning-face]{%FIELD-IF-NONZERO[✶%d ]{favorite_count}}"
  	 ;; "%FACE[font-lock-warning-face]{%FIELD-IF-NONZERO[↺%d ]{retweet_count}}"

	 "%FOLD[ ]{%FACE[font-lock-warning-face]{%FIELD-IF-NONZERO[✶%d ]{favorite_count}}%FACE[font-lock-warning-face]{%FIELD-IF-NONZERO[↺%d ]{retweet_count}}}"
	 
	 "from %f %r\n"

	 "%FACE[font-lock-comment-face]{\n-----------------------------------------\n}"
	 
  	 ))
  )
