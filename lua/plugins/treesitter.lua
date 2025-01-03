return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
        config = function()
            local treesitter = require("nvim-treesitter.configs")

            treesitter.setup {
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
