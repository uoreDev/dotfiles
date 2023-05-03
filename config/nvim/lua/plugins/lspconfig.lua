local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require('lspconfig')

local servers = { 'clangd', 'tsserver', 'html', 'cssls', 'gopls', 'vuels', 'cmake' }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end

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
