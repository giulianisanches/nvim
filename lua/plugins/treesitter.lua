return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup {
                options = {
                    ensure_installed = {
                        "c",
                        "lua",
                        "vim",
                        "vimdoc",
                        "javascript",
                        "html",
                        "python",
                        "puppet",
                        "ruby",
                        "bash",
                        "c_sharp",
                        "dockerfile",
                        "markdown",
                    },
                    sync_install = false,
                    highlight = { enable = true },
                    indent = { enable = true },
                }
            }
        end,
    }

}