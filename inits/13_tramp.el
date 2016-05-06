;;
;;; tramp.elの設定
;;

;; ===================================================================

;; 【参考】trampでリモートサーバのファイルをSSH経由で編集
;; http://qiita.com/muyuu/items/63a82c819bbbe65d37a2

;; ===================================================================

(el-get-bundle tramp)

(use-package tramp
  ;; :defer t
  :config
  (setq tramp-default-method "ssh")
  
  (push
   (cons
    "docker"
    '((tramp-login-program "docker")
      (tramp-login-args (("exec" "-it") ("%h") ("/bin/bash")))
      (tramp-remote-shell "/bin/sh")
      (tramp-remote-shell-args ("-i") ("-c"))))
   tramp-methods)

  (defadvice tramp-completion-handle-file-name-all-completions
      (around dotemacs-completion-docker activate)
    "(tramp-completion-handle-file-name-all-completions \"\" \"/docker:\" returns
    a list of active Docker container names, followed by colons."
    (if (equal (ad-get-arg 1) "/docker:")
	(let* ((dockernames-raw (shell-command-to-string "docker ps | perl -we 'use strict; $_ = <>; m/^(.*)NAMES/ or die; my $offset = length($1); while(<>) {substr($_, 0, $offset, q()); chomp; for(split m/\\W+/) {print qq($_:\n)} }'"))
	       (dockernames (cl-remove-if-not
			     #'(lambda (dockerline) (string-match ":$" dockerline))
			     (split-string dockernames-raw "\n"))))
	  (setq ad-return-value dockernames))
      ad-do-it))
  )
