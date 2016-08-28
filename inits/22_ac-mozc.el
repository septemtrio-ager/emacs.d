;;
;; setting for ac-mozc.el
;; https://github.com/igjit/ac-mozc

(el-get-bundle ac-mozc)

(use-package ac-mozc
  :defer t
  :commands ac-complete-mozc
  :init
  (bind-key "C-j" 'ac-complete-mozc ac-mode-map))
