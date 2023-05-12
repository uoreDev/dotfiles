require ('plugins')
require ('default')
require ('autocmd')
require ('mapping')

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.cmd[[colorscheme tokyonight]]

require('telescope').setup{}
require("nvim-tree").setup()
require("nvim-web-devicons").setup()
require('gitsigns').setup()
require('nvim-treesitter.install').update({ with_sync = true })
require('diffview').setup()
require('lualine').setup {extensions = {'nvim-tree'}}
require("mason").setup()
require ('plugins/nvim-treesitter')
require ('plugins/lspsaga')
require ('plugins/indent_blankline')
require ('plugins/copilot')
require ('plugins/nvim-cmp')
require ('plugins/lspconfig')
require ('plugins/nvim-dap')
