local function toggle_inlay_hint()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end

-- LSP --
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "declaration" })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "definition" })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "hover" })
vim.keymap.set('n', '\\i', toggle_inlay_hint, { desc = "toggle inlay hints" })
-- LSP --

-- Git --
vim.keymap.set('n', '\\gg', '<cmd>Neogit<CR>', { desc = "Neogit" })

vim.keymap.set('n', '\\gh', '<cmd>Gitsigns preview_hunk_inline<CR>', { desc = "preview hunk" })
vim.keymap.set('n', '\\gr', '<cmd>Gitsigns reset_hunk<CR>', { desc = "reset hunk" })
vim.keymap.set('n', '\\gb', '<cmd>Gitsigns blame_line<CR>', { desc = "blame line" })
-- Git --

-- Convinience --
vim.keymap.set('n', '\\p', '<cmd>Precognition peek<CR>', { desc = "peek" })
-- Convinience --

vim.keymap.set('n', '<leader>b', ':buffer ', { desc = "buffer" })
