;;
;;; octave-mode.elの設定
;;

;; ===================================================================

;; 【参考】rakkyooの備忘録:emacs octave-mode - ライブドアブログ
;; http://blog.livedoor.jp/rakkyoo/archives/1883260.html

;; ===================================================================

(el-get-bundle ac-octave)

;; (autoload 'octave-mode "octave-mode" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

(add-hook 'octave-mode-hook
               (lambda ()
		 ;; (auto-fill-mode 1)
                 (if (eq window-system 'x)
                     (font-lock-mode 1))))

(define-key octave-mode-map (kbd "<C-return>") 'octave-send-line)

