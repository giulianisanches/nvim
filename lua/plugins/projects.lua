return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        projects = {
          dev = { "~/dev/src" },
          patterns = { ".git", ".hg", ".bzr" },
          max_depth = 4,
        },
      },
    },
  },
}
