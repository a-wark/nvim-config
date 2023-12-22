return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    local conform = require("conform")
    conform.setup({
      formatter_by_ft = {
        lua = { "stylua" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        -- markdown = { "prettier" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      }
    })
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*",
      callback = function(args)
        conform.format({ bufnr = args.buf })
      end,
    })
  end,
}
