;;
;;; R-mode ESS-modeの設定
;;

(el-get-bundle helm-R)
(el-get-bundle ess-R-data-view)
(el-get-bundle ess-R-object-popup)

(use-package ess-site
  :load-path ("/usr/share/emacs/site-lisp/ess")
  :commands (ess-toggle-underscore)
  :mode ("\\.[rR]$" . R-mode)
  
  :if (locate-library "ess-site")
  :config
  ;; R を起動する時に ess-site をロード
  (autoload 'R "ess-site" "start R" t)

  ;; R-mode, iESS を起動する際に呼び出す初期化関数
  (setq ess-loaded-p nil)

  ;; インデントの幅を4にする（デフォルト2）
  (setq ess-indent-offset 4)

  ;; インデントを調整
  (setq ess-offset-arguments-newline (list ess-indent-offset))

  ;; comment-region のコメントアウトに # を使う（デフォルト##）
  ;; (make-variable-buffer-local 'comment-add)
  (setq comment-add 0)

  ;; アンダースコアの入力が " <- " にならないようにする
  (ess-toggle-underscore nil)

  ;; 補完機能を有効にする
  (setq ess-use-auto-complete t)

  ;; helm を使いたいので ido は邪魔
  (setq ess-use-ido nil)

  ;; キャレットがシンボル上にある場合にもエコーエリアにヘルプを表示する
  (setq ess-eldoc-show-on-symbol t)

  ;; 起動時にワーキングディレクトリを尋ねられないようにする
  (setq ess-ask-for-ess-directory nil)

  ;; # の数によってコメントのインデントの挙動が変わるのを無効にする
  (setq ess-indent-with-fancy-comments nil))

(use-package helm-R
  :defer t
  :config
  ;; C-c r を押した際に表示される候補数の上限値
  ;; 表示数が多いと処理が重くなる
  (setq helm-R-help-limit 40)
  (setq helm-R-local-limit 20)
  
  ; (bind-key "C-c h r" 'helm-for-R ess-mode-map)
  ; (bind-key "C-c h r" 'helm-for-R inferior-ess-mode-map)

  (define-key ess-mode-map (kbd "C-c h r") 'helm-for-R)
  (define-key inferior-ess-mode-map (kbd "C-c h r") 'helm-for-R)
  )

(use-package ess-R-data-view
  :defer t
  :config
  ; (bind-key "C-c v" 'ess-R-dv-pprint ess-mode-map)
  ; (bind-key "C-c v" 'ess-R-dv-pprint inferior-ess-mode-map)
  (define-key ess-mode-map (kbd "C-c v") 'ess-R-dv-pprint)
  (define-key inferior-ess-mode-map (kbd "C-c v") 'ess-R-dv-pprint)
  )

(use-package ess-R-object-popup
  :defer t
  :config
  ; (bind-key "C-c o" 'ess-R-object-popup ess-mode-map)
  (define-key ess-mode-map (kbd "C-c o") 'ess-R-object-popup)
  )
