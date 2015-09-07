;;
;;; yasnippet.elの設定
;;

;; ===================================================================

;; 【参考】yasnippet 8.0の導入からスニペットの書き方、
;;                           anything/helm/auto-completeとの連携
;; 
;; http://fukuyama.co/yasnippet

;; 閲覧・編集([C-x i v] or M-x yas-visit-snippet-file)はanything/helm
;; では出てこないから、 yasnippet.elの2371行目yas-visit-snippet-file関数
;; 中の(yas-prompt-functions '(yas-ido-prompt yas-completing-prompt))
;; を;; コメントアウトする。一時的なプロンプト変更処理を抑制するためである。
;; これでanything/helmインターフェースに対応する。

;; ===================================================================

(el-get-bundle yasnippet
  
  ;; (require 'yasnippet)
  (autoload 'yasnippet "yasnippet-mode" nil t)
  

  (setq yas-snippet-dirs
	'("~/.emacs.d/snippets/mysnippets"      ;; 作成したスニペット
	  "~/.emacs.d/snippets/site-snippets"   ;; 拾ってきたスニペット
	  "~/.emacs.d/snippets/yasnippet-java-mode"
	  
	  ;; java-modeのスニペットがyasnipett-java-modeの
	  ;; スニペットと干渉しないように退避してあるディレクトリ
	  
	  ;; "~/.emacs.d/snippets/temp-snippets"
	  
	  ))

  (yas-global-mode 1)

  ;; ===================================================================

  ;; 【参考】emacs 最強スニペット展開プラグイン yasnippet.elのインストール!
  ;; http://konbu13.hatenablog.com/entry/2014/01/12/113300

  ;; ===================================================================

  ;; 既存スニペットを挿入する
  (define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)
  ;; 新規スニペットを作成するバッファを用意する
  (define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)
  ;; 既存スニペットを閲覧・編集する
  (define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)

  ;;トリガーキーをTABからSPCに変更
  (define-key yas-minor-mode-map (kbd "C-o") 'yas-expand)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  )
