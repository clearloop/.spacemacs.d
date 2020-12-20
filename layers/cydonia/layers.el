;; layers/cydonia/layers.el
(configuration-layer/declare-layers
 '(
   ;; core
   ivy syntax-checking better-defaults auto-completion dap neotree
   (lsp :variables lsp-rust-server 'rls)
   (docker :variables docker-dockerfile-backend 'lsp)

   ;; Mark ups
   yaml markdown git shell cmake html vimscript emoji systemd

   ;; languages
   javascript shell dart protobuf ruby nginx kotlin swift php
   (go
    :variables
    go-format-before-save t
    go-use-golangci-lint t
    godoc-at-point-function 'godoc-gogetdoc)

   (json
    :variables
    json-fmt-tool 'prettier
    json-fmt-on-save t)

   (python
    :variables
    python-formatter 'yapf
    python-format-on-save t
    python-sort-imports-on-save t)

   (rust
    :variables
    rust-format-on-save t)

   (typescript
    :variables
    typescript-fmt-tool 'typescript-formatter
    typescript-fmt-on-save t)))
