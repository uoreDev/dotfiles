return require('packer').startup(function(use)
  -- Plugin manager
  use 'wbthomason/packer.nvim'

  -- Interface
  use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}}
  use {'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true }}
  use "lukas-reineke/indent-blankline.nvim"
  use {"folke/noice.nvim", requires = {"MunifTanjim/nui.nvim", "rcarriga/nvim-notify"}}

  -- Colorscheme / UI
  use 'folke/tokyonight.nvim'

  --- Git
  use 'lewis6991/gitsigns.nvim'
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'github/copilot.vim'
  use {"williamboman/mason.nvim", run = ":MasonUpdate"}

  -- Autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'

  -- Code display
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'RRethy/vim-illuminate'}

  -- Other
  use {'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'}
  use {'mfussenegger/nvim-dap'}
end)
