;;
;;; flyspell.elの設定
;;

(use-package flyspell
  :disabled t
  :commands flyspell-correct-word-popup-el
  :init
  (add-hook 'markdown-mode-hook 'flyspell-mode)
  (add-hook 'prog-mode-hook 'flyspell-prog-mode)
    
  :config

  (ac-flyspell-workaround)
  
  ;; =================================================================

  ;; 【参考】flyspell-mode の修正候補表示を popup.el で
  ;; http://d.hatena.ne.jp/mooz/20100423/p1

  ;; =================================================================
  
  (defun flyspell-correct-word-popup-el ()
    "Pop up a menu of possible corrections for misspelled word before point."
    (interactive)
    ;; use the correct dictionary
    (flyspell-accept-buffer-local-defs)
    (let ((cursor-location (point))
	  (word (flyspell-get-word nil)))
      (if (consp word)
	  (let ((start (car (cdr word)))
		(end (car (cdr (cdr word))))
		(word (car word))
		poss ispell-filter)
	    ;; now check spelling of word.
	    (ispell-send-string "%\n")	;put in verbose mode
	    (ispell-send-string (concat "^" word "\n"))
	    ;; wait until ispell has processed word
	    (while (progn
		     (accept-process-output ispell-process)
		     (not (string= "" (car ispell-filter)))))
	    ;; Remove leading empty element
	    (setq ispell-filter (cdr ispell-filter))
	    ;; ispell process should return something after word is sent.
	    ;; Tag word as valid (i.e., skip) otherwise
	    (or ispell-filter
		(setq ispell-filter '(*)))
	    (if (consp ispell-filter)
		(setq poss (ispell-parse-output (car ispell-filter))))
	    (cond
	     ((or (eq poss t) (stringp poss))
	      ;; don't correct word
	      t)
	     ((null poss)
	      ;; ispell error
	      (error "Ispell: error in Ispell process"))
	     (t
	      ;; The word is incorrect, we have to propose a replacement.
	      (flyspell-do-correct (popup-menu* (car (cddr poss)) :scroll-bar t :margin t)
				   poss word cursor-location start end cursor-location)))
	    (ispell-pdict-save t)))))

  (bind-key "<C-return>" 'flyspell-correct-word-popup-el flyspell-mode-map))
