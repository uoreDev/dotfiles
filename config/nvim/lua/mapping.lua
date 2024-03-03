-- local bufopts = { noremap=true, silent=true, buffer=bufnr }
-- LSP --
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "declaration" })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition,  { desc = "definition" })
vim.keymap.set('n', 'K',  vim.lsp.buf.hover,       { desc = "hover" })
-- LSP --

-- Git --
vim.keymap.set('n', '\\gg', '<cmd>Neogit<CR>', { desc = "Neogit" })

vim.keymap.set('n', '\\gh', '<cmd>Gitsigns preview_hunk_inline<CR>', { desc = "preview hunk" })
vim.keymap.set('n', '\\gr', '<cmd>Gitsigns reset_hunk<CR>',          { desc = "reset hunk" })
vim.keymap.set('n', '\\gb', '<cmd>Gitsigns blame_line<CR>',          { desc = "blame line" })
-- Git --
