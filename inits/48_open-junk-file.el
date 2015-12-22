;;
;;; open-junk-file.elの設定
;;

(el-get-bundle open-junk-file

  (require 'open-junk-file)
  (setq open-junk-file-format "~/.emacs.d/junk/%Y-%m-%d-%H%M%S.")

  ;; open-junk
  (global-set-key (kbd "C-x C-j") 'open-junk-file)
  
  )
