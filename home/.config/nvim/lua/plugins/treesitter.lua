vim.pack.add({
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		version = "main",
	},
})

require("nvim-treesitter").setup()

local parsers = {
	"lua",
	"typescript",
	"tsx",
	"javascript",
	"json",
	"yaml",
	"markdown",
	"bash",
	"qmljs",
}

require("nvim-treesitter").install(parsers)

-- Parser names don't always match filetypes (qmljs -> qml), so resolve the
-- parser when the buffer opens; nvim-treesitter registers the mapping after init
vim.api.nvim_create_autocmd("FileType", {
	callback = function(args)
		if vim.list_contains(parsers, vim.treesitter.language.get_lang(args.match)) then
			vim.treesitter.start()
		end
	end,
})
