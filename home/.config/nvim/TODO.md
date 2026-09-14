# Neovim config TODO — deferred items

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
