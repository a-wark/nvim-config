return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local nvim_tree = require("nvim-tree")

    nvim_tree.setup({
      view = {
        side = "left",
      },
    })

    -- set keymaps
    local keymap = vim.keymap
    keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>tf", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    keymap.set("n", "<leader>tc", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    keymap.set("n", "<leader>tr", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
  end,
}
