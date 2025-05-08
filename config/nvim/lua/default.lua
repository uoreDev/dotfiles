vim.o.number = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.updatetime = 800
vim.o.pumheight = 15
vim.lsp.set_log_level("WARN")
vim.opt.swapfile = false
vim.o.scrolloff = 10
vim.o.winborder = 'rounded'

vim.cmd('set expandtab')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})
