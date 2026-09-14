vim.pack.add({
	{
		src = "https://github.com/neovim/nvim-lspconfig",
		-- version = 'main',
	},
})

-- Merge blink.cmp's capabilities into every LSP server's config
vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(),
})

vim.lsp.enable({ "ts_ls", "jsonls", "yamlls", "lua_ls", "oxlint" })

vim.diagnostic.config({
	virtual_text = {
		source = "if_many",
	},
	signs = true,
	underline = true,
	float = {
		source = true,
	},
})

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP keymaps, set only in buffers with an attached server",
	callback = function(ev)
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	end,
})
