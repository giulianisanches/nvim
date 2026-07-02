-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local default_indent = 4

if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_cursor_antialiasing = false
  vim.g.neovide_position_animation_length = 0
end

vim.g.root_spec = { "cwd" }

vim.opt.relativenumber = false

vim.opt.guifont = "JetBrainsMonoNL Nerd Font Mono:h18"

vim.opt.tabstop = default_indent
vim.opt.shiftwidth = default_indent
vim.opt.softtabstop = default_indent

vim.opt.expandtab = true
vim.opt.cindent = true

vim.opt.timeout = false
vim.opt.showmatch = true
vim.opt.infercase = true
