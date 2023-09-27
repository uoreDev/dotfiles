return {
  "glepnir/lspsaga.nvim",

  config = function()
    require('lspsaga').setup({
      lightbulb = {
        enable = false,
      }
    })

    vim.keymap.set( 'n',       'K',         '<cmd>Lspsaga hover_doc<CR>')
    vim.keymap.set( 'n',       '<leader>o', '<cmd>Lspsaga outline<CR>')
    vim.keymap.set({'n', 't'}, '<leader>t', '<cmd>Lspsaga term_toggle<CR>')
    vim.keymap.set( 'n',       '<leader>d', '<cmd>Lspsaga show_line_diagnostics<CR>')
    vim.keymap.set( 'n',       '<leader>f', '<cmd>Lspsaga lsp_finder<CR>')
    vim.keymap.set( 'n',       '<leader>p', '<cmd>Lspsaga peek_definition<CR>')
  end,
}
