;; layers/cydonia/layers.el
(configuration-layer/declare-layers
 '(
   ;; core
   ivy syntax-checking auto-completion dap neotree
   (docker :variables docker-dockerfile-backend 'lsp)

   ;; Mark ups
   yaml markdown git shell cmake html vimscript emoji systemd

   ;; lsp
   (lsp :variables
        lsp-ui-doc-show-with-cursor t
        lsp-ui-doc-include-signature t
        lsp-rust-server 'rust-analyzer)

   ;; languages
   shell dart protobuf ruby nginx kotlin swift php
   (javascript
    :variables
    js-indent-level 2
    javascript-backend 'lsp
    javascript-fmt-tool 'prettier
    javascript-fmt-on-save t
    js2-mode-show-strict-warnings nil
    js2-mode-show-parse-errors nil)

   (go
    :variables
    go-format-before-save t
    go-use-golangci-lint t
    godoc-at-point-function 'godoc-gogetdoc)

   (solidity :variables
             solidity-flycheck-solc-checker-active t)

   (dart
    :variables
    dart-server-format-on-save t)

   (elixir
    :variables
    elixir-backend 'lsp)

   (json
    :variables
    json-fmt-tool 'prettier
    json-fmt-on-save t)

   (python
    :variables
    python-backend 'lsp
    python-lsp-server 'mypyls
    python-formatter 'yapf
    python-format-on-save t
    python-sort-imports-on-save t)

   (rust
    :variables
    rust-format-on-save t)

   (typescript
    :variables
    typescript-indent-level 2
    typescript-backend 'lsp
    typescript-fmt-tool 'prettier
    typescript-fmt-on-save t)))
