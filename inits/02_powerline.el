;;
;; setting for powerline.el
;; https://github.com/milkypostman/powerline

;; ===================================================================

;; 【参考】
;; https://github.com/gnrr/elisp/blob/9af26873e21e35f9789bc7389aba098255ab83b4/testing.el#L1171-L1272

;; ===================================================================

(el-get-bundle powerline)

(use-package powerline
  
  :config
  (powerline-default-theme)

  ;; モードラインを平面化する
  (set-face-attribute 'mode-line          nil :box nil)
  (set-face-attribute 'mode-line-inactive nil :box nil)

  ;; Solarizedテーマ仕様
  (setq powerline-color1 "#073642")
  (setq powerline-color2 "#002b36")

  (set-face-attribute 'mode-line nil
		      :foreground "#fdf6e3"
		      :background "#2aa198"
		      :box nil)
  (set-face-attribute 'mode-line-inactive nil
		      :box nil)
  (set-face-attribute 'powerline-active1 nil
		      :foreground "white")
  
  ;; mozc mode line indicator
  (defpowerline powerline-mozc-mode-line-indicator
    (mozc-mode-line-indicator-update))

  ;; View mode
  (defpowerline powerline-view
    (when view-mode "View"))

  (add-hook 'view-mode-hook
            '(lambda ()
               (setcar (cdr (assq 'view-mode minor-mode-alist)) "")))

  ;; modified-p
  (defpowerline powerline-modified
    (if (buffer-modified-p) "Mod" ""))

  ;; (defpowerline powerline-pyenv-version
  ;;   (if (string= major-mode "python-mode")
  ;; 	((pyenv--update-mode-line)
  ;; 	 pyenv--modestring)
  ;;     ))

  '( 
    ;; モードラインに現在の関数名を表示
    (which-function-mode 1)
    (set-face-foreground 'which-func "Gray50")
    (set-face-italic-p 'which-func t)

    (defpowerline powerline-which-func
      (progn
        (which-function-mode 1)
        which-func-format))
    )

  (defpowerline powerline-count-lines-and-chars
    (if (region-active-p)
        (format "(%3d:%4d)"
                (count-lines (region-beginning) (region-end))
                (- (region-end) (region-beginning)))
      ""))
  
  ;; Powerlineの表示フォーマットを指定する
  (setq-default mode-line-format
                '("%e"
                  (:eval
                   (let* ((active (powerline-selected-window-active))
                          (mode-line (if active 'mode-line 'mode-line-inactive))
                          (face1 (if active 'powerline-active1 'powerline-inactive1))
                          (face2 (if active 'powerline-active2 'powerline-inactive2))
                          (height 20)
                          (lhs (list
				
                                (powerline-raw "%Z" nil 'l)
				(powerline-modified)             ;; コードが変更されているかどうか

                                (powerline-buffer-id nil 'l)     ;; バッファ名
				
                                (powerline-raw " ")
                                (powerline-arrow-left mode-line face1 height)
				
                                (when (boundp 'erc-modified-channels-object)
                                  (powerline-raw erc-modified-channels-object face1 'l))
                                (powerline-major-mode face1 'l)  ;; メジャーモード
                                (powerline-process face1)
                                (powerline-minor-modes face1 'l) ;; マイナーモード
                                
				(powerline-raw " " face1)
				
                                (powerline-arrow-left face1 face2 height)
				(powerline-mozc-mode-line-indicator face2 'l)
                                (powerline-view face2 'l)
                                ))
                          (rhs (list
                                (powerline-raw global-mode-string face2 'r)
                                ;; (powerline-which-func face2 'r)
				;; (powerline-pyenv-version)
                                (powerline-vc face2 'r)
                                (powerline-arrow-right face2 face1 height)
                                (powerline-raw " " face1)
                                (powerline-narrow face1)
                                (powerline-count-lines-and-chars face1)
                                (powerline-raw "%4l" face1 'r)
                                (powerline-raw ":" face1)
                                (powerline-raw "%3c" face1 'r)
                                (powerline-raw (format "%6d" (point)) face1 'r)
                                (powerline-arrow-right face1 mode-line height)
                                (powerline-raw " ")
                                
                                (powerline-raw " ")
                                (powerline-raw "%6p%8 ")
                                ;; (powerline-hud face2 face1)
                                ;; (powerline-raw "    " nil 'r)
                                )))
                     (concat (powerline-render lhs)
                             (powerline-fill face2 (powerline-width rhs))
                             (powerline-render rhs))))))
  )
