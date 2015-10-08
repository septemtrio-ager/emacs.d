;;
;;; python-mode.elの設定
;;

;; ===================================================================

;;; 【参考】はむかず！PythonプログラミングのためのEmacs設定
;; http://hamukazu.com/2014/12/05/setting-emacs-for-python/

;; ~/.local/binにPATHを通しておく
;; PATHが通ってるかどうかを確認するのは
;; ElpyのConfigureで見ることができる

;; ===================================================================

;; pip install を利用するときは、
;; sudo apt-get install python-pip からpipをインストールする

;; py-autopep8を使って自動でコードスタイルをチェックする(py-autopep8.el)
;; sudo apt-get install pep8 からpep8をインストールする

;; pip install --user autopep8 をしておく
(el-get-bundle py-autopep8
  
  (require 'py-autopep8)
  (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
  )

;; Pythonのオートコンプリートをする
;; pip install --user rope jedi をしておく
;; そのあとに M-x package-install elpy から

;; elpyをインストールする

;; ===================================================================

;; 【参考】https://github.com/jorgenschaefer/elpy/issues/439
;; Elpy以外のところからダウンロードしてきたものは
;; エラーが出るかもしれない

;; ===================================================================

(el-get-bundle elpy
  
  (elpy-enable)
  )
;; flycheckのシンタックスチェッカーがflake8なのでインストールしておく
;; pip install --user flake8

;; ===================================================================

;; 【参考】Emacsの上にも3年
;; http://ksknw.hatenablog.com/entry/2015/02/11/202320

;; ===================================================================

(add-hook 'python-mode-hook
	  '(lambda ()
	     ;;
	     ;; companyの補完をC-n,C-pで選択できるようにする
	     ;;
              (define-key company-active-map (kbd "\C-n") 'company-select-next)
              (define-key company-active-map (kbd "\C-p") 'company-select-previous)
	      ;;
	      ;; companyとの衝突を防ぐためにauto-completeをOFFに
	      ;;
              ;; (auto-complete-mode -1)
              ))


;; elpy 色の設定 デフォルトは黄色でダサいのでauto-complete風に変更
(custom-set-variables
 '(company-minimum-prefix-length 1)
 '(company-selection-wrap-around t))
(custom-set-faces
  '(company-scrollbar-bg ((t (:inherit company-tooltip :background "#c0c0c0"))))
 '(company-scrollbar-fg ((t (:background "limegreen"))))
 '(company-tooltip ((t (:background "#c0c0c0" :foreground "black"))))
 '(company-tooltip-annotation ((t (:inherit company-tooltip :foreground "black"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :foreground "black"))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :foreground "black"))))
 '(company-tooltip-selection ((t (:background "limegreen" :foreground "white"))))
 )



;; numpy,scipy,scikit-learn,matplotlibのインストールは
;; sudo apt-get install python-numpy python-scipy python-sklearn python-matplotlib
;; からインストール可能

;; NLTKはapt-getからインストールするとEnglishがないバージョンがインストールされてしまうので
;; 「pip install nltk」でインストールすること



;; ===================================================================

;; 【参考】python.el の run-python がもたつく理由，その対策
;; http://d.hatena.ne.jp/mooz/20110130/p1

;; ===================================================================

;; (defadvice run-python (around run-python-no-sit activate)
;;   "Suppress absurd sit-for in run-python of python.el"
;;   (let ((process-launched (or (ad-get-arg 2) ; corresponds to `new`
;;                               (not (comint-check-proc python-shell-internal-buffer)))))
;;     (cl-flet ((sit-for (seconds &optional nodisp)
;;                     (when process-launched
;;                       (accept-process-output (get-buffer-process python-sell-internal-buffer)))))
;;       ad-do-it)))



;; load-path下にpython-ex-util.elとwith-prefix.el置いてるのに
;; cannot open load filesって言われちゃって使えない…

;; ===================================================================
;;
;; 【参考】python-ex-util.el書いた。
;; http://d.hatena.ne.jp/podhmo/20110504/1304490997
;;
;; ===================================================================

;; (with-prefix 
;;     ((@ with-prefix:)
;;      (util. with-prefix-util:))
  
;;   (defun @odd? (x) 
;;     "check a received argument is odd number or not"
;;     (if (<= x 0) nil (@even? (- x 1))))
  
;;   (defun @even? (x)
;;     (if (<= x 0) t (@odd? (- x 1))))

;;   (defun util.out (&rest args) 
;;     (message (prin1-to-string args)))

;;   (util.out (@odd? 9) 
;;         (@even? 9) 
;;         (funcall '@odd? 10)
;;         (apply '@even? '(10))))

;; with-prefix.elせっていここまで

;; (unless (fboundp 'current-directory)
;;   (defun current-directory ()
;;     (cond (load-in-progress (file-name-directory load-file-name))
;;           (t default-directory)))
;; )

;; (add-to-list 'load-path (current-directory))

;; (require 'python-ex-util)

;; (defun peu:init ()
;;   (let ((kmap (current-local-map)))
;;     (define-key kmap "\C-c@" 'python-ex-util:eval-buffer-with-current-python)
;;     (cond ((fboundp 'anything)
;;            (define-key kmap "\C-c\C-f" 'python-ex-util:anything-ffap))
;;           (t 
;;            (define-key kmap "\C-c\C-f" 'python-ex-util:ffap/import-sentence)))))

;; (defmacro peu:dispatch (py-mode python-mode)
;;   `(if (boundp 'py-mode-hook) ',py-mode ',python-mode))

;; (add-hook (peu:dispatch py-mode-hook python-mode-hook) 'peu:init)



;;
;; eval-in-repl.elにて下記の挙動を実現している
;; To-Do Pythonを利用する
;;

;; ===================================================================

;; 【参考】emacsでpython.elのとりあえずの設定
;; http://d.hatena.ne.jp/kaz_yos/20131223/1387747252

;; ===================================================================

;; (require 'python)
;; ;;
;; ;; python.elでipythonを使うための設定
;; ;;
;; (setq
;;  ;;
;;  ;; python-shell-interpreterにipythonを設定する
;;  ;;
;;  python-shell-interpreter "/usr/bin/ipython"
;;  python-shell-interpreter-args ""
;;  python-shell-prompt-regexp "In \\[[0-9]+\\]: "
;;  python-shell-prompt-output-Regexp "Out\\[[0-9]+\\]: "
;;  python-shell-completion-setup-code
;;  "from IPython.core.completerlib import module_completion"
;;  python-shell-completion-module-string-code
;;  "';'.join(module_completion('''%s'''))\n"
;;  python-shell-completion-string-code
;;  "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")
;; ;; 
;; ;; 無駄な空行を転送してしまうのを防ぐために python-shell-send-region command を再定義する
;; ;;
;; (defun python-shell-send-region (start end)
;;   "Send the region delimited by START and END to inferior Python process."
;;   (interactive "r")
;;   (python-shell-send-string
;;    (buffer-substring start end)
;;    ;; ここから　No need to send blank lines in ipython? 2013-12-22
;;     (concat
;;      (let ((line-num (line-number-at-pos start)))
;;         ;;When sending a region, add blank lines for non sent code so
;;         ;;backtraces remain correct.
;;        (make-string (1- line-num) ?\n))
;;      (buffer-substring start end))
;;     ;; ここまで
;;    nil t))
;; ;;
;; ;; ESS+Rのような挙動をするように設定する
;; ;;
;; (defun my-python-start ()
;;   (interactive)
;;   (if (not (member "*Python*" (mapcar (function buffer-name) (buffer-list))))
;;       (progn
;;         (delete-other-windows)
;;         (setq w1 (selected-window))
;;         (setq w1name (buffer-name))
;;         (setq w2 (split-window w1 nil t))	; 2つのウインドウに分ける
;; 	(call-interactively 'run-python)	; 実行していない場合は(ipythonで動作している)Pythonをアクティブにする
;;         (set-window-buffer w1 "*Python*")	; *Python*バッファは画面左側に(w1)
;;         (set-window-buffer w2 w1name)		; スクリプトバッファは画面右側に(w2)
;; 	(select-window w2)			; Select script (w2) Added
;; 	)))
;; ;;
;; ;; ipythonが起動していなかったら起動させ、選択範囲があればそれを送り、
;; ;; 選択範囲がなければ行を送る。「def」で始まっている行ならば、関数全体を送る。
;; ;; http://www.reddit.com/r/emacs/comments/1h4hyw/selecting_regions_pythonel/
;; ;;
;; (defun my-python-eval ()
;;   (interactive)
;;   (my-python-start)
;;   (if (and transient-mark-mode mark-active)			; Check if selection is present
;;       (python-shell-send-region (point) (mark))			; If selected, send region
;;     ;;
;;     ;; 選択範囲がなければ、以下の処理を行う
;;     ;;
;;     (beginning-of-line)						; 行のはじめに移動する
;;     (if (looking-at "def")					; 最初が「def」であるかどうかチェックする
;; 	(progn							; 「def」であったら
;; 	  (python-shell-send-defun ())				; 関数全体を送る
;; 	  (python-nav-end-of-defun)				; 「def」の最後に移動する
;; 	  (python-nav-forward-statement)			; 次の文に移動する
;; 	  )
;;       ;;
;;       ;;最初が「def」でなかったら、以下の処理を行う
;;       ;;
;;       (python-shell-send-region (point-at-bol) (point-at-eol))	; 現在の文を送る
;;       (python-nav-forward-statement)				; 次の文に移動する
;;       )
;;     ;;
;;     ;; シェルウィンドウをアクティブにして、そのあとまたバッファに戻る
;;     ;;
;;     (progn
;;       (setq w-script (selected-window))				; スクリプトウィンドウを記憶する
;;       (python-shell-switch-to-shell)				; シェルウィンドウに移動する
;;       (select-window w-script)					; スクリプトウィンドウに戻る
;;       )
;;     ))
;; ;; 
;; ;;
;; ;; hookの定義
;; ;; キーバインドの設定
;; ;;
;; (add-hook 'python-mode-hook		; For Python script
;;           '(lambda()
;; 	     (local-set-key (kbd "<S-return>") 'my-python-eval)
;; 	     (local-set-key (kbd "<C-return>") 'my-python-eval)
;; 	     ))
