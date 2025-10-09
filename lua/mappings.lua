require "nvchad.mappings"

local map = vim.keymap.set

local function mark_and_move(motion)
    return function()
        local count = vim.v.count > 0 and vim.v.count or ""
        if count ~= "" then
            vim.cmd("normal! m'")
            vim.cmd("normal! " .. count .. motion)
        else
            vim.cmd("normal! " .. motion)
        end
    end
end

for _, m in ipairs({ 'j', 'k' }) do
    map('n', m, mark_and_move(m), { noremap = true, silent = true })
end

map('i', '<Tab>', '<Tab>', { noremap = true, silent = true })

map("n", "<Space>k", function()
    local prettier_fts = {
      html = true, css = true, scss = true, less = true,
      javascript = true, javascriptreact = true,
      typescript = true, typescriptreact = true,
      json = true, yaml = true, markdown = true, graphql = true,
    }
    local ft = vim.bo.filetype

    if prettier_fts[ft] then
        vim.notify("Formatting with Prettier (Conform)", vim.log.levels.INFO)
        require("conform").format({ lsp_fallback = false })
    else
        vim.notify("Formatting with LSP (" .. ft .. ")", vim.log.levels.INFO)
        vim.lsp.buf.format({ async = false })
    end
end, { noremap = true, silent = true, desc = "Format (Prettier or LSP)" })

-- map('n', '<Space>k', ':lua vim.lsp.buf.format()<CR>', {
--     noremap = true, silent = true
-- })

map('n', '<Space>ca', ':lua vim.lsp.buf.code_action()<CR>', {
    noremap = true, silent = true
})

map('n', '<Space><Tab>', function() vim.cmd('LspClangdSwitchSourceHeader') end, {
    noremap = true, silent = true
})

map('n', '<C-k>', '<C-i>', { noremap = true, silent = true })

map('n', '<leader>gr', function()
    require('telescope.builtin').lsp_references()
end)

map('n', '<leader>ds', function()
    require('telescope.builtin').diagnostics()
end)

map('n', '<leader>sy', function()
    require('telescope.builtin').lsp_document_symbols()
end)

map('n', '<leader>asy', function()
    require('telescope.builtin').lsp_workspace_symbols()
end)

map('n', '<leader>td', function()
    require('telescope.builtin').lsp_type_definitions()
end)
