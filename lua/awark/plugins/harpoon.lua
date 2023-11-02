return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>", { desc = "Mark file with harpoon" })
    keymap.set("n", "<leader>ht", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "Toggle harpoon menu" })
    keymap.set("n", "<A-t>", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "Toggle harpoon menu" })
    keymap.set("n", "<leader>hj", ":lua require('harpoon.ui').nav_file(1)<CR>")
    keymap.set("n", "<leader>hk", ":lua require('harpoon.ui').nav_file(2)<CR>")
    keymap.set("n", "<leader>hl", ":lua require('harpoon.ui').nav_file(3)<CR>")
    keymap.set("n", "<leader>h'", ":lua require('harpoon.ui').nav_file(4)<CR>")
    keymap.set("n", "<A-a>", ":lua require('harpoon.ui').nav_file(1)<CR>")
    keymap.set("n", "<A-s>", ":lua require('harpoon.ui').nav_file(2)<CR>")
    keymap.set("n", "<A-d>", ":lua require('harpoon.ui').nav_file(3)<CR>")
    keymap.set("n", "<A-f>", ":lua require('harpoon.ui').nav_file(4)<CR>")
    keymap.set("n", "<leader>hn", ":lua require('harpoon.ui').nav_next()<CR>")
    keymap.set("n", "<leader>hp", ":lua require('harpoon.ui').nav_prev()<CR>")
  end,
}
