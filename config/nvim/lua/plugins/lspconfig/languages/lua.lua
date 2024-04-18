local lspconfig = require('lspconfig')
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim', 'hs'},
      },
      --workspace = {
      --  library = vim.api.nvim_get_runtime_file("", true),
      --},
      workspace = {
        library = {
            [vim.fn.expand('$VIMRUNTIME/lua')] = true,
            [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
            ['/Applications/Hammerspoon.app/Contents/Resources/extensions/hs/'] = true,
        },
      },
    },
  },
}
