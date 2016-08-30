;;
;; setting for python development environment
;; https://github.com/shellbj/pyenv.el
;; https://github.com/paetzke/py-autopep8.el
;; https://github.com/jorgenschaefer/elpy

(el-get-bundle pyenv)
(use-package pyenv
  :config
  ;; $PYTHONPATHをパスに追加
  (pyenv--setup)
  )

;; ===================================================================

;;; 【参考】はむかず！PythonプログラミングのためのEmacs設定
;; http://hamukazu.com/2014/12/05/setting-emacs-for-python/

;; ~/.local/binにPATHを通しておく
;; PATHが通ってるかどうかを確認するのは
;; ElpyのConfigureで見ることができる

;; ===================================================================

(el-get-bundle py-autopep8)
(use-package py-autopep8
  :defer t
  :commands py-autopep8-enable-on-save
  
  :init
  (add-hook 'python-mode-hook 'py-autopep8-enable-on-save))

;; ===================================================================

;; 2016/08/30現在
;; "jedi:install-server"コマンドについて
;; pyenvでpython3.5を使っている場合はjedi:install-serverコマンドを
;; 実行するとエラーでインストールが完了しないみたい。
;; 一旦python3.4に切り替えて再度実行すると正常に終了した。

;; ===================================================================

(el-get-bundle jedi)
(use-package jedi
  :init
  (add-hook 'python-mode-hook 'jedi:setup)
  :config
  (setq jedi:complete-on-dot t)
  (setq jedi:server-args
	'("--sys-path" "miniconda3-latest/envs/electricenv/lib/python3.5/site-packages"))
  )

;; ===================================================================

;; 【参考】https://github.com/jorgenschaefer/elpy/issues/439
;; Elpy以外のところからダウンロードしてきたものは
;; エラーが出るかもしれない

;; ===================================================================

(el-get-bundle elpy)
(use-package elpy
  :init
  (remove-hook 'elpy-modules 'elpy-module-company)
  (remove-hook 'elpy-modules 'elpy-module-flymake)
  (add-hook 'elpy-mode-hook 'highlight-indentation-current-column-mode)
  
  :config
  (elpy-enable)
  (when (executable-find "ipython")
    (elpy-use-ipython))
  
  ;; (setq elpy-rpc-backend "jedi")
  
  )

;; =============================-=====================================

;; 【参考】EmacsでPythonのDocstringCommentを自動生成する
;; http://qiita.com/fujimisakari/items/6b541fbc9467eed5696c

;; =============================-=====================================

;; docstring comment
(defun python-docstring-comment()
  (interactive)
  (let* ((begin-point (point-at-bol))
         (end-point (point-at-eol))
         (function-line (buffer-substring begin-point end-point))
         (space (format "    %s" (replace-regexp-in-string "def.*" "" function-line))))
    (goto-char end-point)
    (insert "\n")
    (insert (format "%s\"\"\"\n" space))
    (when (string-match ".*(\\(.+\\)):" function-line)
      (dolist (arg (split-string (match-string 1 function-line) ","))
        (if (not (equal arg "self"))
            (insert (format "%s:param TYPE %s:\n" space (replace-regexp-in-string "^\\s-+\\|\\s-+$" "" arg))))))
    (insert (format "%s:rtype: TYPE\n" space))
    (insert (format "%s\"\"\"" space))))

(define-key python-mode-map (kbd "C-c d") 'python-docstring-comment)



(el-get-bundle ein)
(use-package ein
  :config
  (setq ein:use-auto-complete t))
