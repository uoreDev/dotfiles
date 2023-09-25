local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

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
require("nvim-web-devicons").setup()
require('nvim-treesitter.install').update({ with_sync = true })
require('diffview').setup()
require('lualine').setup {extensions = {'nvim-tree'}}
require("mason").setup()
require('illuminate').configure()
require ('plugins/gitsigns')
require ('plugins/nvim-treesitter')
require ('plugins/lspsaga')
require ('plugins/indent_blankline')
require ('plugins/copilot')
require ('plugins/nvim-cmp')
require ('plugins/lspconfig')
require ('plugins/nvim-dap')
require ('plugins/nvim-tree')
require ('plugins/null-ls')
