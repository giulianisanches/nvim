return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup {
                ensure_installed = {
                    "c",
                    "go",
                    "lua",
                    "vim",
                    "vimdoc",
                    "javascript",
                    "typescript",
                    "java",
                    "kotlin",
                    "html",
                    "python",
                    "perl",
                    "puppet",
                    "ruby",
                    "bash",
                    "c_sharp",
                    "dockerfile",
                    "markdown",
                    "json",
                    "yaml",
                    "hcl",
                    "powershell"
                },
                sync_install = false,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
                indent = { enable = true },
            }
        end,
    }

}
