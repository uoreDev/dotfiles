local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require('lspconfig')

local servers = { 'tsserver', 'html', 'cssls', 'gopls', 'vuels', 'cmake', 'bufls' }

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

lspconfig.clangd.setup {
  capabilities = capabilities,
  filetypes = { "c", "cpp", "objc", "objcpp" },
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
    "--log=verbose",
  },
}

lspconfig.yamlls.setup {
  capabilities = capabilities,
  settings = {
    yaml = {
      schemaStore = {
        enable = true,
        url = "https://www.schemastore.org/api/json/catalog.json",
      },
      schemas = {
        kubernetes = {"*.yaml"},
        ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
      },
      hover = true,
      completion = true,
      validate = false,
    },
  },
}
