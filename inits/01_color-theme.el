;; ;;
;; ;;; color themeの設定
;; ;;



;; ;; tango-darkテーマ(デフォルト)
;; ;; (load-theme 'tango-dark t)



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
