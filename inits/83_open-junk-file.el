;;
;;; open-junk-file.elの設定
;;

;; (el-get-bundle open-junk-file)

;; (require 'open-junk-file)
;; (setq open-junk-file-format "~/.emacs.d/junk/%Y-%m-%d-%H%M%S.")

(el-get-bundle open-junk-file)

(use-package open-junk-file
  :bind ("C-x C-j" . ope-junk-file)
  :config
  (setq open-junk-file-format "~/.emacs.d/junk/%Y-%m-%d-%H%M%S.")
  )