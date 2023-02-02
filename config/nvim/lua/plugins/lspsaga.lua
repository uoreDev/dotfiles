require("lspsaga").setup({})

vim.keymap.set('n', 'K',         '<cmd>Lspsaga hover_doc<CR>')
vim.keymap.set('n', '<leader>o', '<cmd>Lspsaga outline<CR>')
