return {
  "nvim-treesitter/nvim-treesitter",

  build = ":TSUpdate",

  config = function()
    require ('nvim-treesitter.configs').setup{
      ensure_installed = {
        "bash",
        "c",
        "cmake",
        "cpp",
        "css",
        "csv",
        "dockerfile",
        "git_config",
        "git_rebase",
        "go",
        "gomod",
        "gosum",
        "html",
        "javascript",
        "json",
        "kconfig",
        "lua",
        "luadoc",
        "make",
        "markdown",
        "objdump",
        "python",
        "tmux",
        "vue",
        "xml",
        "yaml",
      },

      highlight = {
        enable = true,
      }
    }
    require('nvim-treesitter.install').update(
      { with_sync = true }
    )
  end,
}
