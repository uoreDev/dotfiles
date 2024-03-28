local lspconfig = require('lspconfig')
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.volar.setup{
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
  init_options = {
    typescript = {
        tsdk = "/opt/homebrew/lib/node_modules/typescript/lib"
    }
  },
  capabilities = capabilities,
}
