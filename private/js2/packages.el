;;; packages.el --- js2 Layer packages File for Spacemacs
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
(setq js2-packages
    '(
      ;; package names go here
      js2-mode
      ))

;; List of packages to exclude.
(setq js2-excluded-packages '())

;; For each package, define a function js2/init-<package-name>
;;
(defun js2/init-js2-mode ()
  "Initialize my package"
  (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
  (add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))

  (setq-default js2-basic-offset 2)

  (defun my-disable-indent-tabs-mode ()
    (setq indent-tabs-mode nil))
  (add-hook 'js2-mode-hook 'my-disable-indent-tabs-mode)
  )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
