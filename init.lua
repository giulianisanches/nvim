local vim = vim

-- disable netrw at the very start of your init.lua (needed by nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

if vim.g.neovide then
    require("config.neovide")
end

require("config.lazy")
require("config.nvim")
require("config.keymap")
