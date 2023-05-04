vim.api.nvim_command('autocmd VimEnter * NvimTreeToggle')
vim.api.nvim_command('autocmd BufEnter * ++nested if winnr(\'$\') == 1 && bufname() == \'NvimTree_\' . tabpagenr() | quit | endif')
