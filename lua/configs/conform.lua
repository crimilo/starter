local options = {
  formatters_by_ft = {
    html = { "prettierd", "prettier" },
    css = { "prettierd", "prettier" },
    scss = { "prettierd", "prettier" },
    less = { "prettierd", "prettier" },
    json = { "prettierd", "prettier" },
    markdown = { "prettierd", "prettier" },
    graphql = { "prettierd", "prettier" },
    javascript = { "prettierd", "prettier" },
    javascriptreact = { "prettierd", "prettier" },
    typescript = { "prettierd", "prettier" },
    typescriptreact = { "prettierd", "prettier" },
    yaml = { "prettierd", "prettier" },
  },
  formatters = {
    prettierd = {
      prepend_args = { "--print-width", "80", "--tab-width", "4" },
    },
    prettier = {
      prepend_args = { "--print-width", "80", "--tab-width", "4" },
    },
  },
}

return options

