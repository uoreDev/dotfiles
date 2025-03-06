return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      -- Conform will run the first available formatter
      javascript = { "prettierd", "prettier", stop_after_first = true },
      -- Golang
      go = { "gofmt" },
      -- C/C++
      c = { "clang-format" },
      cpp = { "clang-format" },
      -- JSON
      json = { "jq" },
    },

    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
