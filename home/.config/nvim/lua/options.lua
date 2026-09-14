-- Line Number Options
vim.o.number = true
vim.o.relativenumber = true

-- Search Case-Sensativity
vim.o.ignorecase = true
vim.o.smartcase = true

-- Highlight the line cursor is on
vim.o.cursorline = true

-- Scroll should keep 10 lines on screen at all times
vim.o.scrolloff = 10

-- Show <tab> and trailing spaces
vim.o.list = true

-- Turn unsaved changes into a prompt
vim.o.confirm = true

-- Always reserve one column
vim.o.signcolumn = "yes"

-- Sync clipboard between OS and Neovim. Schedule the setting after `UIEnter` because it can
-- increase startup-time. Remove this option if you want your OS clipboard to remain independent.
vim.api.nvim_create_autocmd("UIEnter", {
	callback = function()
		vim.o.clipboard = "unnamedplus"
	end,
})
