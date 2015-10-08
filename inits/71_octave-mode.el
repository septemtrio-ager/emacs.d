;;
;;; octave-mode.elの設定
;;

;; ===================================================================

;; 【参考】rakkyooの備忘録:emacs octave-mode - ライブドアブログ
;; http://blog.livedoor.jp/rakkyoo/archives/1883260.html

;; ===================================================================

(el-get-bundle ac-octave)

(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

(autoload 'run-octave "octave-inf" nil t)

(add-hook 'octave-mode-hook
               (lambda ()
		 
		 (define-key octave-mode-map (kbd "<C-return>") 'octave-send-line)
                 
		 (if (eq window-system 'x)
                     (font-lock-mode 1))))



