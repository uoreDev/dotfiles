return {
  "mason-org/mason-lspconfig.nvim",

  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()
    require("mason-lspconfig").setup()
  end,
}
