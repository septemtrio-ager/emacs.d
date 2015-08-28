;;
;;; smart-newline.elの設定
;;

;; ===================================================================

;; 【参考】smart-newline.elという拡張
;; http://ainame.hateblo.jp/entry/2013/12/08/162032

;; ===================================================================

(el-get-bundle smart-newline
  
  ;; c-modeで利用する
  (add-hook 'c-mode-hook 'smart-newline-mode)

  ;; c++-modeで利用する
  (add-hook 'c++-mode-hook 'smart-newline-mode)

  ;; java-modeで利用する
  (add-hook 'java-mode-hook 'smart-newline-mode)

  ;; python-modeで利用する
  (add-hook 'python-mode-hook 'smart-newline-mode)

  ;; emacs-lisp-modeで利用する
  (add-hook 'emacs-lisp-mode-hook 'smart-newline-mode)

  ;; web-modeで利用する
  (add-hook 'web-mode-hook 'smart-newline-mode)

  ;; css-modeで利用する
  (add-hook 'css-mode-hook 'smart-newline-mode)

  ;; arduino-modeで利用する
  (add-hook 'arduino-mode-hook 'smart-newline-mode)

  ;; GFM-modeで利用する
  (add-hook 'gfm-mode-hook 'smart-newline-mode)

  ;; shell-script-modeで利用する
  (add-hook 'sh-mode-hook 'smart-newline-mode)

  ;; r-modeで利用する
  (add-hook 'R-mode-hook 'smart-newline-mode)

  ;; octave-modeで利用する
  (add-hook 'octave-mode-hook 'smart-newline-mode)

  ;; markdown-modeで利用する
  (add-hook 'markdown-mode-hook 'smart-newline-mode)

  ;; nxml-modeで利用する
  (add-hook 'nxml-mode-hook 'smart-newline-mode)
  
  )
