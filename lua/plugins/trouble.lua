return {
  "folke/trouble.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {},
  config = function()
    local trouble = require("trouble")
    local keymap = vim.keymap

    keymap.set("n", "<leader>xx", function()
      trouble.toggle()
    end, { desc = "Trouble toggle" })

    keymap.set("n", "<leader>xw", function()
      trouble.toggle("workspace_diagnostics")
    end, { desc = "Trouble workspace diagnostics" })

    keymap.set("n", "<leader>xd", function()
      trouble.toggle("document_diagnostics")
    end, { desc = "Trouble document diagnostics" })

    keymap.set("n", "<leader>xq", function()
      trouble.toggle("quickfix")
    end, { desc = "Trouble quickfix" })

    keymap.set("n", "<leader>xl", function()
      trouble.toggle("loclist")
    end, { desc = "Trouble loclist" })

    keymap.set("n", "gR", function()
      trouble.toggle("lsp_references")
    end, { desc = "Trouble lsp references" })

    keymap.set("n", "[x", function()
      trouble.open()
      trouble.previous({ skip_groups = true, jump = true })
    end, { desc = "Trouble previous diagnostic" })

    keymap.set("n", "]x", function()
      trouble.open()
      trouble.next({ skip_groups = true, jump = true })
    end, { desc = "Trouble next diagnostic" })
  end,
}
