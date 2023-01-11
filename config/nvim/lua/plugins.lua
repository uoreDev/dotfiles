return require('packer').startup(function(use)
	-- Plugin manager
	use 'wbthomason/packer.nvim'

	-- Interface
	use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}}
	use 'simrat39/symbols-outline.nvim'

	-- Colorscheme / UI
	use 'folke/tokyonight.nvim'
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

	use {
  		"folke/which-key.nvim",
		  config = function()
		    require("which-key").setup {}
	end }
	use 'lewis6991/gitsigns.nvim'

	-- LSP
	use 'neovim/nvim-lspconfig'
	use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        local saga = require("lspsaga")

        saga.init_lsp_saga({
            -- your configuration
        })
    end,
	})
	-- Autocompletion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

	-- Code display
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
end)
