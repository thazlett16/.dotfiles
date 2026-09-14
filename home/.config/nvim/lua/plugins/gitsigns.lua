vim.pack.add({
	{
		src = "https://github.com/lewis6991/gitsigns.nvim",
		-- version = 'main'
	},
})

local gitsigns = require("gitsigns")

gitsigns.setup()

vim.keymap.set("n", "]c", function()
	gitsigns.nav_hunk("next")
end, {
	desc = "Next git hunk",
})

vim.keymap.set("n", "[c", function()
	gitsigns.nav_hunk("prev")
end, {
	desc = "Previous git hunk",
})

vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, { desc = "Preview git hunk" })

vim.keymap.set("n", "<leader>gb", gitsigns.blame_line, { desc = "Git blame line" })
