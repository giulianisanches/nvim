local vim = vim

require("config.nvim")

if vim.g.neovide then
    require("config.neovide")
end

require("config.lazy")