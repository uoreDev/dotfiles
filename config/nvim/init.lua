require ('plugins')
require ('default')
require ('autocmd')
require ('mapping')

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.cmd[[colorscheme tokyonight]]

require('luasnip')
require('telescope').setup{}
require("which-key").setup {}
require("nvim-tree").setup()
require("nvim-web-devicons").setup()
require('gitsigns').setup()
require("symbols-outline").setup()
require('nvim-treesitter.install').update({ with_sync = true })
require('diffview').setup()
require ('plugins/nvim-treesitter')
require ('plugins/lspsaga')
require ('plugins/bufferline')
require ('plugins/indent_blankline')
require ('plugins/copilot')
require ('plugins/nvim-cmp')

-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require('lspconfig')

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'clangd', 'tsserver', 'html', 'cssls', 'gopls', 'lua_ls', 'vuels', 'cmake' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end
