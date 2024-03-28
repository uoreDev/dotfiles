local lspconfig = require('lspconfig')
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'},
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
    },
  },
}
