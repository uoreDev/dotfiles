return {
  "akinsho/toggleterm.nvim",

  config = true,

  keys = {
    { mode = "n", "<leader>t", "<cmd>ToggleTerm<cr>",  desc = "ToggleTerm" },
    { mode = "t", "<Esc>",     "<C-\\><C-n>",          noremap = true, silent = true },
  },
}
