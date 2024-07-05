return {
  "neovim/nvim-lspconfig",

  config = function()
    require('plugins.lspconfig.languages.cpp')
    require('plugins.lspconfig.languages.lua')
    require('plugins.lspconfig.languages.vue')
    require('plugins.lspconfig.languages.yaml')

    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lspconfig = require('lspconfig')

    local servers = { 'html', 'cssls', 'gopls', 'cmake', 'bufls' }

    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
        -- on_attach = my_custom_on_attach,
        capabilities = capabilities,
      }
    end
  end,
}
