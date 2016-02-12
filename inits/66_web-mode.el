;;
;;; web-mode.elの設定
;;

;; ===================================================================

;; 【参考】html5でも正しくインデントしてくれるweb-modeを導入してみた
;; http://yanmoo.blogspot.jp/2013/06/html5web-mode.html

;; ===================================================================

(el-get-bundle web-mode)

(use-package web-mode
  :load-path "/usr/bin/tidy"
  
  :commands web-mode-comment-or-uncomment
  
  :mode ("\\.\\(html\\|xhtml\\|shtml\\|tpl\\)\\'" . web-mode)

  :init
  ;; (bind-key "C-c ;" 'web-mode-comment-or-uncomment web-mode-map)
  
  :config
  ;; web-modeの設定
  (setq web-mode-markup-indent-offset 2) ;; html indent
  (setq web-mode-css-indent-offset 2)    ;; css indent
  (setq web-mode-code-indent-offset 2)   ;; script indent(js,php,etc..)

  ;; htmlの内容をインデント
  ;; TEXTAREA等の中身をインデントすると副作用が起こったりするので
  ;; デフォルトではインデントしない
  ;;(setq web-mode-indent-style 2)
  ;; コメントのスタイル
  ;;   1:htmlのコメントスタイル(default)
  ;;   2:テンプレートエンジンのコメントスタイル
  ;;      (Ex. {# django comment #},{* smarty comment *},{{-- blade comment --}})

  (setq web-mode-comment-style 2)

  ;; 終了タグの自動補完をしない
  ;;(setq web-mode-disable-auto-pairing t)
  ;; color:#ff0000;等とした場合に指定した色をbgに表示しない
  ;;(setq web-mode-disable-css-colorization t)
  ;;css,js,php,etc..の範囲をbg色で表示
  ;; (setq web-mode-enable-block-faces t)
  ;; (custom-set-faces
  ;;  '(web-mode-server-face
  ;;    ((t (:background "grey"))))                  ; template Blockの背景色
  ;;  '(web-mode-css-face
  ;;    ((t (:background "grey18"))))                ; CSS Blockの背景色
  ;;  '(web-mode-javascript-face
  ;;    ((t (:background "grey36"))))                ; javascript Blockの背景色
  ;;  )
  ;;(setq web-mode-enable-heredoc-fontification t)

  ;; 現在の要素をハイライトする
  (setq web-mode-enable-current-element-highlight t)

  ;; 現在の要素の列をハイライトする
  ;; (setq web-mode-enable-current-column-highlight t)

  (custom-set-faces
   '(web-mode-doctype-face
     ((t (:foreground "#82AE46"))))                          ; doctype
   '(web-mode-html-tag-face
     ((t (:foreground "#E6B422" :weight bold))))             ; 要素名
   '(web-mode-html-attr-name-face
     ((t (:foreground "#C97586"))))                          ; 属性名など
   '(web-mode-html-attr-value-face
     ((t (:foreground "#82AE46"))))                          ; 属性値
   '(web-mode-comment-face
     ((t (:foreground "#D9333F"))))                          ; コメント
   '(web-mode-server-comment-face
     ((t (:foreground "#D9333F"))))                          ; コメント
   '(web-mode-css-rule-face
     ((t (:foreground "#A0D8EF"))))                          ; cssのタグ
   '(web-mode-css-pseudo-class-face
     ((t (:foreground "#FF7F00"))))                          ; css 疑似クラス
   '(web-mode-css-at-rule-face
     ((t (:foreground "#FF7F00"))))                          ; cssのタグ
   '(web-mode-current-element-highlight-face
     ((t (:foreground "#ff0000"))))                          ; 要素ハイライト
   )
  
  ;; C-c ; で コメント、アンコメントする
  (bind-key "C-c ;" 'web-mode-comment-or-uncomment web-mode-map)
  
  )
