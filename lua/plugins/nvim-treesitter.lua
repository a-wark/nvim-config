return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = {
          "c",
          "lua",
          "vim",
          "javascript",
          "typescript",
          "html",
          "rust",
          "gitignore",
          "css",
          "http",
          "sql"
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = false },
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    -- event = "LazyFile",
    enabled = true,
    opts = { mode = "cursor", max_lines = 3 },
  }
}