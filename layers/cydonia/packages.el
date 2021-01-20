;;; packages.el --- cydonia layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Mercury <mercury@Marianne.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `cydonia-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `cydonia/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `cydonia/pre-init-PACKAGE' and/or
;;   `cydonia/post-init-PACKAGE' to customize the package as it is loaded.


;;; Code:
(defconst cydonia-packages
  '(json-mode rust-mode))

(defun cydonia/post-init-json-mode()
  (add-hook
   'json-mode-hook
   (lambda ()
     (make-local-variable 'js-indent-level)
     (setq js-indent-level 2))))

(defun cydonia/post-init-rust-mode()
  (add-hook
   'rust-mode-hook
   (lambda ()
     (if (string-match "substrate" buffer-file-name)
         (rust-disable-format-on-save)))))
