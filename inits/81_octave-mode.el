;;
;;; octave-mode.elの設定
;;

;; ===================================================================

;; 【参考】rakkyooの備忘録:emacs octave-mode - ライブドアブログ
;; http://blog.livedoor.jp/rakkyoo/archives/1883260.html

;; ===================================================================

(el-get-bundle ac-octave)

(use-package octave
  :disabled t
  :defer t
  
  :mode ("\\.m$" . octave-mode)
  
  :commands octave-send-line
  
  :init
  (use-package run-octave)
  (add-hook 'octave-mode-hook
		  (lambda ()
		    (bind-key "<C-return>" 'octave-send-line octave-mode-map)))
  
  :if (eq window-system 'x)
  :config
  (font-lock-mode 1))
