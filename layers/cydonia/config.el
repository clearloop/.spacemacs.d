(setq-default tab-width 4)
(setq-default typescript-indent-level 4)
(setq js-doc-mail-address "cdr.today@foxmail.com"
      js-doc-author (format "clearloop <%s>" js-doc-mail-address)
      js-doc-url "https://github.com/darwinia"
      js-doc-license "GPL-3.0")

(xterm-mouse-mode -1)
(add-hook 'org-mode-hook #'org-config-fill-prefix)
