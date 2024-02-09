return {
  "akinsho/toggleterm.nvim",

  config = function ()
    require("toggleterm").setup()

    vim.keymap.set('n', '<leader>t', '<cmd>ToggleTerm<CR>', { desc = "toggle terminal" })
    vim.keymap.set('t', '<Esc>',     '<C-\\><C-n>',         { noremap = true, silent = true })
  end
}
