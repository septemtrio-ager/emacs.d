;;
;;; PHP開発環境の設定
;;

;; ===================================================================

;; 【参考】【Emacs24.4リリース記念】いま使っているEmacsのPHP開発環境
;;

;; ===================================================================

(el-get-bundle php-mode
  (autoload 'php-mode "php-mode" "Major mode for editing php code." t)
  )

;; helmや最新版PHPに対応したバージョン
(el-get-bundle suzuki/php-completion)

