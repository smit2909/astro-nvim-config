return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    textobjects = { enable = true },
    ensure_installed = {
      "dockerfile",
      "lua",
      "go",
      "python",
      "html",
      "css",
      "yaml",
      "proto",
      "make",
      "sql",
      "javascript",
      "json",
      "jsdoc",
      "json5",
      "tsx",
      "typescript",
      "templ"
    },
  },
}
