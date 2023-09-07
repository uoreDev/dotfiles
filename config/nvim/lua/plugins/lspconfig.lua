local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require('lspconfig')

local servers = { 'tsserver', 'html', 'cssls', 'gopls', 'cmake', 'bufls' }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end

lspconfig.volar.setup{
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
  init_options = {
    typescript = {
        tsdk = "/usr/local/lib/node_modules/typescript/lib"
    }
  },
  capabilities = capabilities,
}

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
    "--enable-config",
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
