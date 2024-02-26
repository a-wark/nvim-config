local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search highlights

keymap.set("n", "x", '"_x"') -- delete single character without copying into register
keymap.set("n", "<leader>p", '"_dP"') -- replace currenly selected text with default register without yanking it

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- vim maximizer

keymap.set("n", "<C-d>", "<C-d>zz") -- move half page down and center cursor
keymap.set("n", "<C-u>", "<C-u>zz") -- move half page up and center cursor

keymap.set("n", "<A-j>", ":m .+2<CR>==")
keymap.set("n", "<A-k>", ":m .-2<CR>==")
