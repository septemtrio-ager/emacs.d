;;
;;; anything-yasnippet.elの設定
;;

;; ===================================================================

;; 【参考】anything-c-yasnippetを使わずに
;;                         yasnippetをanythingインタフェースで選択する
;; http://d.hatena.ne.jp/sugyan/20120111/1326288445

;; ===================================================================

(defun my-yas/prompt (prompt choices &optional display-fn)
  (let* ((names (loop for choice in choices
                      collect (or (and display-fn (funcall display-fn choice))
                                  choice)))
         (selected (anything-other-buffer
                    `(((name . ,(format "%s" prompt))
                       (candidates . names)
                       (action . (("Insert snippet" . (lambda (arg) arg))))))
                    "*anything yas/prompt*")))
    (if selected
        (let ((n (position selected names :test 'equal)))
          (nth n choices))
      (signal 'quit "user quit!"))))
(custom-set-variables '(yas/prompt-functions '(my-yas/prompt)))
