return {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = { 'typescript' },
  root_markers = { 'package.json', 'tsconfig.json', 'jsconfig.json' },
  init_options = {
    typescript = {
      tsdk = vim.fn.expand('$MASON/packages/typescript-language-server/node_modules/typescript/lib'),
    },
  },
}
