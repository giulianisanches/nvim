return {
    {
        -- i will temporary use my fork until a PR that i'm watching gets merged
        "giulianisanches/telescope-project.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            -- local project_actions = require("telescope._extensions.project.actions")
            local vim = vim

            require('telescope').setup {
                -- defaults = {
                --     path_display = { "smart" },
                -- },
                extensions = {
                    project = {
                        base_dirs = {
                            { path = '~/dev/src', max_depth = 4 },
                        },
                        hidden_files = true,
                        order_by = "asc",
                        sync_with_nvim_tree = true,
                        display_type = "two-segment",
                        hide_workspace = true
                        -- -- default for on_project_selected = find project files
                        -- on_project_selected = function(prompt_bufnr)
                        --     project_actions.change_working_directory(prompt_bufnr, false)
                        -- end,
                    }
                }
            }
        end,
    },
}
