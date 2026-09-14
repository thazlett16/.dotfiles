# Neovim config TODO — deferred items

## Initial information
I am trying to get started with a neovim config. I've read a bunch of articles and looked at a ton of configs here are some articles and standards I've seen (some of which may be out of date though):

- https://fredrikaverpil.github.io/blog/2026/04/15/from-lazy.nvim-to-vim.pack/
- https://github.com/fredrikaverpil/dotfiles/tree/main/nvim-fredrik

- https://echasnovski.com/blog/2026-03-13-a-guide-to-vim-pack
- https://github.com/echasnovski/nvim/tree/master

- https://github.com/ThePrimeagen/init.lua/tree/master

- https://github.com/neoclide/coc.nvim

- https://dotfiles.substack.com/p/native-lsp-in-neovim-012

Generally I want to make sure that I am following the correct standards from the ground up for a new modern nvim v12 config! I want to support:
- LSP
- treesitter
- harpoon

Generally, I want it to FEEL like an IDE but in the terminal. But I don't know much since I haven't done this before so not really sure what any of this is or what all I'm missing!

Please do some research and then ask me questions for things I might be missing and am unsure of what I need. Feel free to make suggestions if you find something in modern configs to make the config structure better or faster or even ways to simplify it if I can get rid of a plugin as well

## Plugins deferred
- Harpoon (ThePrimeagen/harpoon, harpoon2 branch) — quick file marking/switching between actively-worked files. Skipped for now while focusing on core LSP/treesitter/completion setup.

## LSP languages not yet configured
- Go: gopls (mason: gopls) — add lsp/gopls.lua, add to vim.lsp.enable list, add treesitter parser
- Rust: rust-analyzer — consider rustaceanvim instead of raw lspconfig (handles cargo/build scripts + inline type hints better than vanilla rust-analyzer setup)
- Java: jdtls — heavier setup, needs nvim-jdtls plugin (not just lspconfig) for workspace-per-project handling, debugging, and Gradle/Maven awareness
- Others worth considering: bash (bashls), docker (dockerls), toml (taplo), markdown (marksman)

## Debugging (nvim-dap)
- nvim-dap + nvim-dap-ui + nvim-dap-virtual-text core setup
- Per-language adapters: js-debug-adapter (TS/JS), delve (Go), codelldb (Rust), jdtls' bundled DAP (Java)

## Nice-to-haves
- treesitter-context (sticky function/class header at top of window)
- which-key.nvim (keymap hints popup)
- persistence.nvim or similar session management
- toggleterm.nvim if built-in :terminal + window nav isn't enough
- snippets: confirm blink.cmp's built-in snippet support is sufficient before adding LuaSnip/friendly-snippets separately
- git integration/utility
