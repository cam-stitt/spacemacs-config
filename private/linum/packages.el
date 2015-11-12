;;; packages.el --- linum Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq linum-packages
    '(
      ;; package names go here
      linum
      ))

;; List of packages to exclude.
(setq linum-excluded-packages '())

;; For each package, define a function linum/init-<package-name>
;;
(defun linum/init-linum ()
  "Initialize my package"
  (add-hook 'js2-mode-hook 'linum-mode)

  (add-hook 'python-mode-hook 'linum-mode)

  (add-hook 'less-css-mode-hook 'linum-mode)

  (add-hook 'web-mode-hook 'linum-mode)
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
