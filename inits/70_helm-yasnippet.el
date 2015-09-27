;;
;;; helm-yasnippet.elの設定
;;

;; ===================================================================

;; 【参考】おすすめの helm拡張
;; http://d.hatena.ne.jp/syohex/20121207/1354885367

;; ===================================================================

;; anything-yasnippetをhelmに対応させる

(defun my-yas/prompt (prompt choices &optional display-fn)
  (let* ((names (loop for choice in choices
                      collect (or (and display-fn (funcall display-fn choice))
                                  choice)))
         (selected (helm-other-buffer
                    `(((name . ,(format "%s" prompt))
                       (candidates . names)
                       (action . (("Insert snippet" . (lambda (arg) arg))))))
                    "*helm yas/prompt*")))
    (if selected
        (let ((n (position selected names :test 'equal)))
          (nth n choices))
      (signal 'quit "user quit!"))))

(custom-set-variables '(yas/prompt-functions '(my-yas/prompt)))
;; (setq yas/prompt-functions '(my-yas/prompt))
