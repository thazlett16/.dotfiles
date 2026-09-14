vim.pack.add({
	{
		src = "https://github.com/ibhagwan/fzf-lua",
		-- version = 'main',
	},
})

local fzfLua = require("fzf-lua")

fzfLua.setup({
	fzf_colors = true,
})

vim.keymap.set("n", "<leader>ff", fzfLua.files, { desc = "Find files" })

vim.keymap.set("n", "<leader>fg", fzfLua.git_files, { desc = "Find git files" })

vim.keymap.set("n", "<leader>fl", fzfLua.live_grep, { desc = "Find live grep" })

vim.keymap.set("n", "<leader>fb", fzfLua.buffers, { desc = "Find buffers" })
