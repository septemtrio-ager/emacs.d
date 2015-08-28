;;
;;; android-mode.elの設定
;;

;; ===================================================================

;; 【参考】android-mode.elを使う
;; http://hiroom2.jimdo.com/2014/02/07/android-mode-el%E3%82%92%E4%BD%BF%E3%81%86/

;; ===================================================================

(el-get-bundle android-mode)

(require 'android-mode)

;; Android SDKのディレクトリを設定する
(setq android-mode-sdk-dir "~/android-dev/android-sdk-linux/")
;; (custom-set-variables '(android-mode-sdk-dir "~/android-dev/android-sdk-linux/"))

;; コマンド用プレフィックス
;; ここで設定したキーバインド＋android-mode.elで設定された文字、で、各種機能を利用できます
(setq android-mode-key-prefix (kbd "C-c C-c"))

;; デフォルトで起動するエミュレータ名
(setq android-mode-avd "CyberAngelDevice")
  
