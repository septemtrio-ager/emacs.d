;;
;;; quickrun.elの設定
;;

;; ===================================================================

;; 【参考】Emacsで開発中のプログラムの実行をチョー簡単にするquickrun
;; http://rubikitch.com/2014/11/06/quickrun/

;; キーバインドについては99_keybind.elに記載

;; ===================================================================

(el-get-bundle quickrun

  
  (require 'quickrun)

  ;; コマンドキー "C++/C11"を追加する
  ;; C++のデフォルトで使うように指定.
  (quickrun-add-command "C++/C11"
			'((:command . "g++")
			  (:exec    . ("%c -std=c++11 %o -o %e %s"
				       "%e %a"))
			  (:remove  . ("%e"))
			  (:description . "Compile C++ file with g++ -std=c++11 option and execute"))
			:default "c++")
  )
