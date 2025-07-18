return {
  cmd = { 'vue-language-server', '--stdio' },
  filetypes = { 'vue', 'typescript' },
  root_markers = { 'package.json', 'vue.config.js' },
  init_options = {
    typescript = {
      tsdk = vim.fn.expand('$MASON/packages/typescript-language-server/node_modules/typescript/lib'),
    },
  },
}
