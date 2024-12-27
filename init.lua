local vim = vim

-- should be the first configuration to load
require("config.nvim")

if vim.g.neovide then
    require("config.neovide")
end

require("config.lazy")
