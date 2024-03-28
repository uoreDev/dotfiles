local lspconfig = require('lspconfig')
local capabilities = require("cmp_nvim_lsp").default_capabilities()

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
