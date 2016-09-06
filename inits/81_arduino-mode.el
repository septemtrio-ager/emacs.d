;;
;; setting for arduino-mode
;; https://github.com/bookest/arduino-mode

(el-get-bundle arduino-mode)

(use-package arduino-mode
  :mode (("\\.pred\\'" . arduino-mode)
	 ("\\.ino\\'" . arduino-mode)))
