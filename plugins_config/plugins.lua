require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        },
		border = "none",
    }
})
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer" },
}

require("lspconfig").lua_ls.setup {}
