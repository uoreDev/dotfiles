return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use 'folke/tokyonight.nvim'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	--use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
	use {
  		"folke/which-key.nvim",
		  config = function()
		    require("which-key").setup {}
	end }
	use 'lewis6991/gitsigns.nvim'
end)
