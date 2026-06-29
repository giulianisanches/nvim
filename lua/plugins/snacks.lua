return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = { preset = "select" }, -- use the telescope layout preset
      sources = {
        files = {
          hidden = true,
          exclude = { "node_modules", ".git" },
        },
        grep = {
          hidden = true,
          exclude = { "node_modules", ".git" },
        },
        explorer = {
          hidden = true,
          exclude = { "node_modules", ".git" },
        },
        projects = {
          dev = { "~/dev/src" },
          patterns = { ".git", ".hg", ".bzr" },
          max_depth = 4,
        },
      },
    },
  },
}
