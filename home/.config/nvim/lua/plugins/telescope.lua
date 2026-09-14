vim.pack.add({
	{
		src = "https://github.com/nvim-telescope/telescope.nvim",
		-- version = 'main',
	},
	{
		src = "https://github.com/nvim-lua/plenary.nvim",
		-- version = 'main',
	},
})

require("telescope").setup({})

local telescopeBuiltin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", telescopeBuiltin.find_files, { desc = "Find files" })

vim.keymap.set("n", "<leader>fg", telescopeBuiltin.live_grep, { desc = "Live grep" })

vim.keymap.set("n", "<leader>fb", telescopeBuiltin.buffers, { desc = "find buffers" })
