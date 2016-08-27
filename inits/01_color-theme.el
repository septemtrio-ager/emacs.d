;;
;; setting for color theme
;; https://github.com/shunk031/chameleon-theming
;; https://github.com/bbatsov/solarized-emacs
;; https://github.com/owainlewis/emacs-color-themes
;; https://github.com/oneKelvinSmith/monokai-emacs

(el-get-bundle shunk031/chameleon-theming)
(use-package chameleon-theming
  :bind (("C-c t n" . chameleon-load-next-theme)
	 ("C-c t p" . chameleon-load-prev-theme))
  :init
  (setq chameleon-gui-themes
	'(solarized-dark
	  tango-dark
	  monokai))
  
  (setq chameleon-initial-alpha-value 100)
  (setq chameleon-overwrite-themes-directory
	(expand-file-name "~/emacs.d/etc/chameleon-theming/")))



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
