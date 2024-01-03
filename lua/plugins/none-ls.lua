return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "jay-babu/mason-null-ls.nvim",
  },
  config = function()
    local mason_null_ls = require("mason-null-ls")
    local null_ls = require("null-ls")
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    mason_null_ls.setup({
      ensure_installed = {
        "stylua",
        "prettier",
        "eslint_d",
      },
    })

    null_ls.setup({
      sources = {
        formatting.stylua,
        formatting.prettier,
        diagnostics.eslint_d,
      },
    })

    local keymap = vim.keymap
    keymap.set("n", "<leader>nf", vim.lsp.buf.format, { desc = "format file" })
  end,
}
