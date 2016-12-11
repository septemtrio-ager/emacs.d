;;
;; setting for company-mode.el
;; https://github.com/company-mode/company-mode

;; ===================================================================

;; 【参考】auto-completeユーザのための company-modeの設定
;; http://qiita.com/syohex/items/8d21d7422f14e9b53b17

;; ===================================================================

(el-get-bundle company-mode)
(use-package company-mode
  :init
  (global-company-mode t)
  (bind-key "C-n" 'company-select-next company-active-map)
  (bind-key "C-p" 'company-select-previous company-active-map)
  :bind (("M-i" . company-complete))
  
  :config

  (setq company-tooltip-limit 20)
  (setq company-idle-delay 0.1)
  (set1 company-minimum-prefix-length 3)
  (setq company-require-match nil)
  (setq company-tooltip-align-annotations t)
  (setq company-transformers '(company-sort-by-occurrence))
  
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-h") nil)
  
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  
  (define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
  (define-key company-active-map (kbd "<tab>") 'company-complete-common-or-cycle)
  (define-key company-active-map (kbd "S-TAB") 'company-select-previous)
  (define-key company-active-map (kbd "<backtab>") 'company-select-previous)
  )

(el-get-bundle company-quickhelp)
(use-package company-quickhelp
  :disabled t
  :config
  (company-quickhelp-mode 1)
  )
