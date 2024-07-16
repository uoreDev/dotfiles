return {
  "nvim-lualine/lualine.nvim",

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  opts = {
    extensions = {
      'neo-tree',
      'symbols-outline',
    },
    sections = {
      lualine_x = {'encoding', 'filetype'},
    },
  },
}
