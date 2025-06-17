return {
    {
        "coffebar/neovim-project",
        opts = {
            projects = { -- define project roots
                "~/dev/src/*/*/*",
            },
            picker = {
                type = "telescope",
            }
        },
        init = function()
            -- enable saving the state of plugins in the session
            -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
            vim.opt.sessionoptions:append("globals")
        end,
        dependencies = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-telescope/telescope.nvim" } ,
            { "Shatur/neovim-session-manager" },
        },
        lazy = false,
        priority = 100,
    }
}
