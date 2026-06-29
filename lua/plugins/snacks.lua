return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = { preset = "select" }, -- use the telescope layout preset
      sources = {
        files = {
          hidden = true,
        },
        grep = {
          hidden = true,
        },
        explorer = {
          hidden = true,
        },
        exclude = { "node_modules", ".git" },
      },
    },
  },
}
