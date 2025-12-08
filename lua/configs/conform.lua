local options = {
  formatters_by_ft = {
    html = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },
    less = { "prettier" },
    json = { "prettier" },
    markdown = { "prettier" },
    graphql = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    yaml = { "prettier" },
  },
  formatters = {
    prettier = {
      prepend_args = { "--print-width", "80", "--tab-width", "4" },
    },
  },
}

return options

