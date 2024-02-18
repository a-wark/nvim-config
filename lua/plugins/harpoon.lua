return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  branch = "harpoon2",
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    local keymap = vim.keymap
    keymap.set("n", "<leader>ha", function()
      harpoon:list():append()
    end, { desc = "Mark file with harpoon" })
    keymap.set("n", "<leader>ht", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Toggle harpoon menu" })
    -- keymap.set("n", "<A-t>", function()
    --   harpoon.ui:toggle_quick_menu(harpoon:list())
    -- end, { desc = "Toggle harpoon menu" })

    -- these keybindings are comfortable for colemak layout
    keymap.set("n", "<leader>hn", function()
      harpoon:list():select(1)
    end)
    keymap.set("n", "<leader>he", function()
      harpoon:list():select(2)
    end)
    keymap.set("n", "<leader>hi", function()
      harpoon:list():select(3)
    end)
    keymap.set("n", "<leader>ho", function()
      harpoon:list():select(4)
    end)
    -- keymap.set("n", "<A-j>", function()
    --   harpoon:list():select(1)
    -- end)
    -- keymap.set("n", "<A-k>", function()
    --   harpoon:list():select(2)
    -- end)
    -- keymap.set("n", "<A-l>", function()
    --   harpoon:list():select(3)
    -- end)
    -- keymap.set("n", "<A-'>", function()
    --   harpoon:list():select(4)
    -- end)
  end,
}
