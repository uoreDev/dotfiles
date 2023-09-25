return require('lazy').setup({
  -- Interface
  {'nvim-tree/nvim-tree.lua', dependencies = {'nvim-tree/nvim-web-devicons'}},
  {'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }},
  "lukas-reineke/indent-blankline.nvim",

  -- Colorscheme / UI
  'folke/tokyonight.nvim',

  --- Git
  'lewis6991/gitsigns.nvim',
  { 'sindrets/diffview.nvim', dependencies = 'nvim-lua/plenary.nvim' },

  -- LSP
  'neovim/nvim-lspconfig',
  'glepnir/lspsaga.nvim',
  'github/copilot.vim',
  {"williamboman/mason.nvim", build = ":MasonUpdate"},
  {"jose-elias-alvarez/null-ls.nvim", dependencies = { "nvim-lua/plenary.nvim" }},

  -- Autocompletion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'saadparwaiz1/cmp_luasnip',
  'L3MON4D3/LuaSnip',

  -- Code display
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  {'RRethy/vim-illuminate'},

  -- Other
  {'nvim-telescope/telescope.nvim', dependencies = 'nvim-lua/plenary.nvim'},
  {'mfussenegger/nvim-dap'},
  {'wakatime/vim-wakatime'},
})
