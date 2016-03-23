;; ;;
;; ;;; color themeの設定
;; ;;


;; ===================================================================

;; 【参考】whatyouhide/emacs.d
;; https://github.com/whatyouhide/emacs.d/blob/master/init.el#L46

;; ===================================================================

;; wh/term-theme, wh/gui-themesで設定したカラーテーマについて
;; "C-c t n"で次のテーマ、"C-c t p"で前のテーマを利用する

;; (el-get-bundle wh-theming
;;   :url "https://raw.githubusercontent.com/whatyouhide/emacs.d/master/lisp/wh-theming.el")

(use-package wh-theming
  
  :bind (("C-c t r" . wh/theming-load-random-theme)
	 ("C-c t n" . wh/theming-load-next-theme)
	 ("C-c t p" . wh/theming-load-prev-theme))

  :init
  
  ;; powerlineの設定ファイルを指定
  (setq init_powerline (expand-file-name "~/emacs.d/inits/02_powerline.elc"))
    
  ;; 利用するテーマを指定
  (setq wh/term-theme 'solarized-dark
	wh/gui-themes '(solarized-dark
			tango-dark
			monokai
			))

  :config
  (if (memq window-system '(mac ns))
      (wh/theming-load-random-theme)
    (load-theme wh/term-theme t))
  
  )



(el-get-bundle solarized-emacs)
(use-package solarized-theme
  ;; :disabled t
  :config
  (setq solarized-distinct-fringe-background t)
  (setq solarized-high-contrast-mode-line t)
  (setq solarized-use-more-italic t)
  (load-theme 'solarized-dark t))



(el-get-bundle sublime-themes)
(use-package emacs-color-themes
  :disabled t
  :config
  (load-theme 'spolsky t))



(el-get-bundle monokai-theme)
(use-package monokai-theme
  :disabled t
  :config
  (load-theme 'monokai t))



;; ;; ウィンドウの透過度を変更する
;; ;; (if window-system
;; ;;     (progn
;; ;;       (set-background-color "Black")
;; ;;       (set-foreground-color "LightGray")
;; ;;       (set-frame-parameter nil 'alpha 80)
;; ;;       ))



;; ;; カーソルの色を変更する
;; ;; (set-cursor-color "yellow")



;; ;; fringeの設定
;; ;; (ウィンドウ左右にある余白)



;; ;; 左だけfringeを表示させるようにする
(fringe-mode '(7 . 2))



;; ;; 色の変更
;; ;; (set-face-background 'fringe "gray10")
;; ;; (set-face-attribute 'fringe nil :background "gold3" :foreground "#3F3F3F")
