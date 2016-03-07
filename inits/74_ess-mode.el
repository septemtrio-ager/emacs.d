;;
;;; R-mode ESS-modeの設定
;;

(el-get-bundle helm-R)
(el-get-bundle ess-R-data-view)
(el-get-bundle ess-R-object-popup)

;; (use-package ess-site
;;   :defer t
;;   :mode (("\\.[rR]$" . R-mode))
;;   :commands (ess-load-hook)
;;   :init ((add-hook 'R-mode-hook 'ess-load-hook)
;; 	 (add-hook 'ess-pre-run-hook
;; 		   (lambda ()
;; 		     (ess-load-hook t))))
  
;;   :config

;;   ;; R を起動する時に ess-site をロード
;;   (autoload 'R "ess-site" "start R" t)

;;   ;; R-mode, iESS を起動する際に呼び出す初期化関数
;;   (setq ess-loaded-p nil)

;;   (defun ess-load-hook (&optional from-iess-p)
    
;;     ;; インデントの幅を4にする（デフォルト2）
;;     (setq ess-indent-level 4)

;;     ;; インデントを調整
;;     (setq ess-arg-function-offset-new-line (list ess-indent-level))

;;     ;; comment-region のコメントアウトに # を使う（デフォルト##）
;;     (make-variable-buffer-local 'comment-add)
;;     (setq comment-add 0)

;;     (when (not ess-loaded-p)
;;       ;; アンダースコアの入力が " <- " にならないようにする
;;       (ess-toggle-underscore nil)

;;       ;; 補完機能を有効にする
;;       (setq ess-use-auto-complete t)

;;       ;; helm を使いたいので ido は邪魔
;;       (setq ess-use-ido nil)

;;       ;; キャレットがシンボル上にある場合にもエコーエリアにヘルプを表示する
;;       (setq ess-eldoc-show-on-symbol t)

;;       ;; 起動時にワーキングディレクトリを尋ねられないようにする
;;       (setq ess-ask-for-ess-directory nil)

;;       ;; # の数によってコメントのインデントの挙動が変わるのを無効にする
;;       (setq ess-fancy-comments nil)
;;       (setq ess-loaded-p t)

;;       (unless from-iess-p
;; 	;; ウィンドウが1つの状態で *.R を開いた場合はウィンドウを縦に分割して R を表示する
;; 	(when (one-window-p)
;; 	  (split-window-horizontally)
;; 	  (let ((buf (current-buffer)))
;; 	    (ess-switch-to-ESS nil)
;; 	    (switch-to-buffer-other-window buf))))

;;       ;; R を起動する前だと auto-complete-mode が off になるので自前で on にする
;;       ;; cf. ess.el の ess-load-extras
;;       (when (and ess-use-auto-complete (require 'auto-complete nil t))
;;         (add-to-list 'ac-modes 'ess-mode)
;;         (mapcar (lambda (el)
;; 		  (add-to-list 'ac-trigger-commands el))
;;                 '(ess-smart-comma smart-operator-comma skeleton-pair-insert-maybe))
;;         (setq ac-sources '(ac-source-R ac-source-filename))))
;;     (if from-iess-p
	
;; 	;; R のプロセスが他になければウィンドウを分割する
;; 	(if (> (length ess-process-name-list) 0)
;; 	    (when (one-window-p)
;; 	      (split-window-horizontally)
;; 	      (other-window 1)))
      
;;       ;; *.R と R のプロセスを結びつける
;;       ;; これをしておかないと補完などの便利な機能が使えない
;;       (ess-force-buffer-current "Process to load into: ")))
;;   )

;; (use-package helm-R
  
;;   :init
;;   ((bind-key "C-c h r" 'helm-for-R ess-mode-map)
;;    (bind-key "C-c h r" 'helm-for-R inferior-ess-mode-map))
  
;;   :config
;;   ;; C-c r を押した際に表示される候補数の上限値
;;   ;; 表示数が多いと処理が重くなる
;;   (setq helm-R-help-limit 40)
;;   (setq helm-R-local-limit 20)
;;   )

;; (use-package ess-R-data-view
;;   :init
;;   ((bind-key "C-c v" 'ess-R-dv-pprint ess-mode-map)
;;    (bind-key "C-c v" 'ess-R-dv-pprint inferior-ess-mode-map))
  
;;   )

;; (use-package ess-R-object-popup
;;   :init
;;   (bind-key "C-c o" 'ess-R-object-popup)
;;   )
