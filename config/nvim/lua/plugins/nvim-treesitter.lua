return {
  "nvim-treesitter/nvim-treesitter",

  build = ":TSUpdate",

  config = function()
    require ('nvim-treesitter.configs').setup{
      ensure_installed = 'all',

      highlight = {
        enable = true,
      }
    }
    require('nvim-treesitter.install').update(
      { with_sync = true }
    )
  end,
}
