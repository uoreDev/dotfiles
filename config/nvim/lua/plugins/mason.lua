return {
  "williamboman/mason.nvim",

  build = function()
    vim.cmd[[MasonUpdate]]
  end,

  config = function()
    require('mason').setup{}
  end,
}
