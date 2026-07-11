return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters = {
      ["markdown-toc"] = {
        prepend_args = { "--bullets=-" },
      },
    },
  },
}
