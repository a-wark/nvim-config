return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        auto_install = true, -- instead of ensure_installed
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = false },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<leader>si",
            node_incremental = "<leader>si",
            scope_incremental = "<leader>sc",
            node_decremental = "<leader>sd",
          },
        },
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
              -- ["ac"] = "@class.outer",
              -- ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
              ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
            },
            selection_modes = {
              ["@parameter.outer"] = "v", -- charwise
              ["@function.outer"] = "V", -- linewise
              ["@class.outer"] = "<c-v>", -- blockwise
            },
          },
        },
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    -- event = "LazyFile",
    enabled = true,
    opts = { mode = "cursor", max_lines = 3 },
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    -- dependencies = {
    --   "nvim/treesitter/nvim-treesitter",
    -- },
  },
}
