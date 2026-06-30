return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruby_lsp = {
        cmd = { os.getenv("HOME") .. "/.rbenv/shims/ruby-lsp" },
        cmd_env = { BUNDLE_GEMFILE = vim.fn.getenv("GLOBAL_GEMFILE") },
      },
    },
  },
}
