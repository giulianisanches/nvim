return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 
            'nvim-lua/plenary.nvim' 
        }
    },
    {
        -- i will temporary use my fork until a PR that i'm watching gets merged
        -- https://github.com/nvim-telescope/telescope-project.nvim/pull/168
        "giulianisanches/telescope-project.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            local configs = require("telescope")
            local project_actions = require("telescope._extensions.project.actions")

            configs.setup {
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
                        hide_workspace = true,
                        on_project_selected = function(prompt_bufnr)
                            project_actions.change_working_directory(prompt_bufnr, false)
                        end,
                    }
                }
            }
        end,
    },
}
