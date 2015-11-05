;;
;;; powerline.elの設定
;;

;; ===================================================================

;; 【参考】
;; https://github.com/gnrr/elisp/blob/9af26873e21e35f9789bc7389aba098255ab83b4/testing.el#L1171-L1272

;; ===================================================================

(el-get-bundle powerline
  
  (require 'powerline)
  (powerline-default-theme)

  ;; モードラインを平面化する
  (set-face-attribute 'mode-line          nil :box nil)
  (set-face-attribute 'mode-line-inactive nil :box nil)

  ;; Linux Mint仕様
  (set-face-background 'mode-line         "#006400")   ; darkgreen
  (set-face-foreground 'mode-line         "#FFFFDC")   ; near-white
  (set-face-background 'powerline-active1 "#32CD32")   ; lime-green
  (set-face-foreground 'powerline-active1 "#272821")   ; near-black
  (set-face-background 'powerline-active2 "#CDC0B0")   ; sand
  (set-face-foreground 'powerline-active2 "#272821")   ; near-black

  ;; ハロウィン仕様
  (set-face-background 'mode-line         "#03001c")   ; very dark-blue
  (set-face-foreground 'mode-line         "#FFFFDC")   ; near-white
  (set-face-background 'powerline-active1 "#FE9600")   ; pure-orange
  (set-face-foreground 'powerline-active1 "#272821")   ; near-black
  (set-face-background 'powerline-active2 "#FFEE4A")   ; sand
  (set-face-foreground 'powerline-active2 "#272821")   ; near-black

  ;; クリスマス仕様
  (set-face-background 'mode-line         "#FF0000")   ; red
  (set-face-foreground 'mode-line         "#FFFFDC")   ; near-white
  (set-face-background 'powerline-active1 "#006400")   ; dark green
  (set-face-foreground 'powerline-active1 "#FFFFDC")   ; near-white
  (set-face-background 'powerline-active2 "#FFFFDC")   ; near-white
  (set-face-foreground 'powerline-active2 "#FFFFDC")   ; near-black
  
  
  ;; inactive color
  (set-face-background 'mode-line-inactive  "#CCCC99") ; sand
  (set-face-foreground 'mode-line-inactive  "#272821") ; near-black
  (set-face-background 'powerline-inactive1 "#383838") ; near black
  (set-face-foreground 'powerline-inactive1 "#CCCCCC") ; light-gray
  (set-face-background 'powerline-inactive2 "#626262") ; dark-gray
  (set-face-foreground 'powerline-inactive2 "#CCCCCC") ; light-gray
  
  ;; View mode
  (defpowerline powerline-view
    (when view-mode "View"))

  (add-hook 'view-mode-hook
            '(lambda ()
               (setcar (cdr (assq 'view-mode minor-mode-alist)) "")))

  ;; modified-p
  (defpowerline powerline-modified
    (if (buffer-modified-p) "mod" ""))

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
				(powerline-modified)
                                ;; (powerline-buffer-size nil 'l)
                                (powerline-buffer-id nil 'l)
				
                                (powerline-raw " ")
                                (powerline-arrow-right mode-line face1 height)
				
                                (when (boundp 'erc-modified-channels-object)
                                  (powerline-raw erc-modified-channels-object face1 'l))
                                (powerline-major-mode face1 'l)
                                (powerline-process face1)
                                (powerline-minor-modes face1 'l)
                                
				(powerline-raw " " face1)
				
                                (powerline-arrow-right face1 face2 height)
                                (powerline-view face2 'l)
                                ))
                          (rhs (list
                                (powerline-raw global-mode-string face2 'r)
                                ;; (powerline-which-func face2 'r)
                                (powerline-vc face2 'r)
                                (powerline-arrow-left face2 face1 height)
                                (powerline-raw " " face1)
                                (powerline-narrow face1)
                                (powerline-count-lines-and-chars face1)
                                (powerline-raw "%4l" face1 'r)
                                (powerline-raw ":" face1)
                                (powerline-raw "%3c" face1 'r)
                                (powerline-raw (format "%6d" (point)) face1 'r)
                                (powerline-arrow-left face1 mode-line height)
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
