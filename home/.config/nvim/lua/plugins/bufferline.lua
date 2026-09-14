vim.pack.add({
	{
		src = "https://github.com/akinsho/bufferline.nvim",
		-- version = 'main'
	},
})

require("bufferline").setup()

vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })

vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
