-- local bufopts = { noremap=true, silent=true, buffer=bufnr }
-- LSP --
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "declaration" })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition,  { desc = "definition" })
-- LSP --

-- Git --
vim.keymap.set('n', '\\gg', '<cmd>Neogit<CR>', { desc = "Neogit" })

vim.keymap.set('n', '\\gh', '<cmd>Gitsigns preview_hunk_inline<CR>', { desc = "preview hunk" })
-- Git --
