;;
;;; arduino-mode.elの設定
;;

;; ===================================================================

;; 【参考】Arduino IDEを使わない方法 Emacs＋Ino
;; http://morinezumiiii.hatenablog.com/entry/2014/05/04/185601

;; ===================================================================

;; $ sudo apt-get install arduino
;; を実行してArduinoIDEをインストールしておく
;; 初回起動時にArduino Permission Checkerが起動するので
;; 「Add」をクリックしておく

;; ArduinoIDEを利用するときは
;; ツール -> シリアルポートから
;; /dev/ttyACMC を選択する

;; Ino のインストール
;; $ git clone git://github.com/amperka/ino.git
;; $ cd ino
;; $ sudo make install

;; $ mkdir beep  <-- Arduinoプロジェクトディレクトリを作成して
;; $ cd beep  <-- そこに移動しておく
;; $ ino init -t beep <-- inoを使って、Arduinoプロジェクト用にlibとsrcディレクトリを生成出来る
;; $ ino init -t empty <-- -tオプションはテンプレートを使用する意味で、emptyを指定すると空のプロジェクトが生成される
;; $ ino build <-- Arduinoプロジェクトをビルド
;; $ ino upload <-- Arduinoプロジェクトを実機にアップロード



;; (el-get-bundle arduino-mode
  
;;   (setq auto-mode-alist (cons '("\\.\\(pde\\|ino\\)$" . arduino-mode) auto-mode-alist))
;;   (autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)

;;   (add-hook 'arduino-mode-hook
;; 	    '(lambda ()
;; 	    (auto-complete-mode t)
;; 	    ))
  
;;   )

(el-get-bundle arduino-mode)

(use-package arduino-mode
  :mode (("\\.pred\\'" . arduino-mode)
	 ("\\.ino\\'" . arduino-mode)))
