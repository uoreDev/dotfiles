return require('packer').startup(function(use)
  -- Plugin manager
  use 'wbthomason/packer.nvim'

  -- Interface
  use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}}
  use 'simrat39/symbols-outline.nvim'
  use "lukas-reineke/indent-blankline.nvim"

  -- Colorscheme / UI
  use 'folke/tokyonight.nvim'
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  --- Git
  use 'lewis6991/gitsigns.nvim'
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'github/copilot.vim'

  -- Autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

  -- Code display
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Other
  use 'folke/which-key.nvim'
  use {'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'}
end)
