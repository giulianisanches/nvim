local excluded = { "node_modules", ".git" }
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = { preset = "select" }, -- use the telescope layout preset
      exclude = excluded,
      hidden = true,
      ignored = true,
      sources = {
        files = {
          hidden = true,
          ignored = true,
        },
        grep = {
          hidden = true,
          ignored = true,
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
