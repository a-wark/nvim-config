return {
  {
    "lukas-reineke/indent-blankline.nvim",
    dependencies = {
      -- "craftzdog/solarized-osaka"
      "craftzdog/solarized-osaka.nvim",
    },
    main = "ibl",
    -- event = "LazyFile",
    opts = {
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = { enabled = false },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    },
    config = function()
      local ibl = require("ibl")
      local hooks = require("ibl.hooks")
      local highlight = { "RainbowViolet" }
      local colors = require("solarized-osaka.colors").setup()

      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = colors.violet900 })
      end)

      ibl.setup { indent = { highlight = highlight } }
    end,
  }
}
