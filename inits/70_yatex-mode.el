;;
;; yatex-mode.elの設定
;;

;; =========================================================

;; 【参考】TeX環境構築： Emacs+YaTeX+RefTeX
;; http://keisanbutsuriya.hateblo.jp/entry/2015/03/13/175219

;; =========================================================

;; =========================================================

;; 【参考】TeXLive2013 +Emacs + YaTex の設定をした
;; http://tnil.hatenadiary.jp/entry/20130823/1377230350

;; =========================================================

(el-get-bundle elpa:yatex

  (autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)

  (setq auto-mode-alist
	(append '(("\\.tex$" . yatex-mode)
		  ("\\.ltx$" . yatex-mode)
		  ("\\.cls$" . yatex-mode)
		  ("\\.sty$" . yatex-mode)
		  ("\\.clo$" . yatex-mode)
		  ("\\.bbl$" . yatex-mode)) auto-mode-alist))

  (setq YaTeX-latex-message-code 'utf-8)
  
  (setq YaTeX-kanji-code nil)

  (setq tex-command "platex")

  (setq dvi2-command "xdvi")

  (setq bibtex-command "pbibtex")

  (setq dviprint-command-format "dvipdfmx")

  ;; ;; 自動で改行しないようにする
  (add-hook 'yatex-mode-hook '(lambda () (auto-fill-mode -1)))
  )
