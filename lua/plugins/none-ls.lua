return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "jay-babu/mason-null-ls.nvim",
    "nvimtools/none-ls-extras.nvim",
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
        "black", -- python formatter
        "pylint", -- python linter
      },
    })

    null_ls.setup({
      sources = {
        formatting.stylua,
        formatting.prettier,
        require("none-ls.diagnostics.eslint_d").with({
          condition = function(utils)
            return utils.root_has_file({ ".eslintrc.js", ".eslintrc.cjs" }) -- only enable if .eslintrc.js or .eslintrc.cjs exists
          end,
        }),
        formatting.black,
        diagnostics.pylint,
      },
    })

    local keymap = vim.keymap
    keymap.set("n", "<leader>nf", vim.lsp.buf.format, { desc = "format file" })
  end,
}
