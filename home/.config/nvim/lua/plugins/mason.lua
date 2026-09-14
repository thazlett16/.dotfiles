vim.pack.add({
	{
		src = "https://github.com/mason-org/mason.nvim",
		-- version = 'main',
	},
	{
		src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
		-- version = 'main',
	},
})

require("mason").setup({})

require("mason-tool-installer").setup({
	ensure_installed = {
		"typescript-language-server", -- ts_ls
		"json-lsp", -- jsonls
		"yaml-language-server", -- yamlls
		"lua-language-server", -- lua_ls
		"stylua", -- lua formatter
		"oxfmt", -- ts/js/json/yaml formatter
		"oxlint", -- ts/js linter
	},
})
