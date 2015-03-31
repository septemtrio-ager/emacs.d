;;
;;; hideshow / fold-dwim.elの設定
;;

;; ===================================================================

;; 【参考】うわっ...私のEmacs、使いにくすぎ？だったら...
;; http://d.hatena.ne.jp/sandai/20120304/p2

;; ===================================================================

;; fold-dwim.elをインストールしておくこと

;; C/C++モードにフックを追加
(add-hook 'c++-mode-hook
          '(lambda ()                                                       
             (hs-minor-mode 1)))                                         
(add-hook 'c-mode-hook
          '(lambda ()                                                          
             (hs-minor-mode 1)))

(el-get-bundle fold-dwim
  
  (when (require 'fold-dwim nil t)
    (require 'hideshow nil t)
    ;;
    ;; 機能を利用するメジャーモード一覧
    ;;
    (let ((hook))
      (dolist (hook
	       '(emacs-lisp-mode-hook
		 c-mode-common-hook
		 python-mode-hook
		 php-mode-hook
		 ruby-mode-hook
		 js2-mode-hook
		 css-mode-hook
		 apples-mode-hook))
	(add-hook hook 'hs-minor-mode))))
  )
