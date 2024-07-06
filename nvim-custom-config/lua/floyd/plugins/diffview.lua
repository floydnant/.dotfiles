-- import nvim-tree plugin safely
local setup, diffview = pcall(require, "diffview")
if not setup then
	return
end

diffview.setup({
	signs = {
		fold_closed = "▶︎",
		fold_open = "▼",
		-- done = "✓",
	},
	file_panel = {
		listing_style = "list", -- One of 'list' or 'tree'
	},
})
