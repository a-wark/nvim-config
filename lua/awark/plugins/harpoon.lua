-- import harpoon plugin safely
local harpoon_status, harpoon = pcall(require, "harpoon")
if not harpoon_status then
	return
end

-- configure harpoon
harpoon.setup({
	menu = {
		width = 90,
	},
})
