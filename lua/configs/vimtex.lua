vim.g.vimtex_view_method = "zathura"

vim.g.vimtex_compiler_latexmk = {
    aux_dir = vim.fn.getcwd() .. "/build",
    out_dir = vim.fn.getcwd() .. "/build",
}

