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
(defconst cydonia-packages '(js-doc))

(defun cydonia/post-init-js-doc()
  (add-hook
   'tide-mode-hook
   (lambda ()
     (define-key tide-mode-map "\C-ci" 'js-comment)
     (define-key tide-mode-map "@" 'js-doc-insert-tag))))
