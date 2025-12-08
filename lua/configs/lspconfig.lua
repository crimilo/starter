require("nvchad.configs.lspconfig").defaults()

local servers = {
    "html", "cssls", "cmake", "ts_ls", "tailwindcss", "lua_ls", "clangd", 
    "astro"
}

vim.lsp.enable(servers)
