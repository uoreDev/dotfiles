local dap = require('dap')

dap.adapters.go = {
  type = 'executable';
  command = 'node';
  args = {os.getenv('HOME') .. '/vscode-go/dist/debugAdapter.js'};
}
dap.configurations.go = {
  {
    type = 'go';
    name = 'Debug';
    request = 'launch';
    showLog = false;
    program = "${file}";
    dlvToolPath = vim.fn.exepath('dlv')  -- Adjust to where delve is installed
  },
}

vim.keymap.set('n', '<Leader>re', function() require('dap').repl.toggle({height = 10})end)
vim.keymap.set('n', '<Leader>B',  function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>C',  function() require('dap').continue() end)
