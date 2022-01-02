local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "dev.lsp.lsp-installer"
require("dev.lsp.handlers").setup()
require "dev.lsp.null-ls"
