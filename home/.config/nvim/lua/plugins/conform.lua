vim.pack.add({
	{
		src = "https://github.com/stevearc/conform.nvim",
		-- version = 'main',
	},
})

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		typescript = { "oxfmt" },
		typescriptreact = { "oxfmt" },
		javascript = { "oxfmt" },
		javascriptreact = { "oxfmt" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
