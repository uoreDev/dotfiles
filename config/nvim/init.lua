require ('plugins')
require ('default')
require ('autocmd')

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.cmd[[colorscheme tokyonight]]

require("nvim-tree").setup()
require("nvim-web-devicons").setup()
require("lspconfig").clangd.setup{}
require("bufferline").setup{}
require('gitsigns').setup()
