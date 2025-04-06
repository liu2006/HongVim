return {
    {
        "nvim-telescope/telescope.nvim",
        branch = '0.1.x',
        lazy = false,
        cmd = "Telescope",
        keys = {
            {
                "<leader>ff",
                function()
                    require("telescope.builtin").find_files()
                end,
                desc = "Telescope find files",
            },
            {
                "<leader>fg",
                function()
                    require("telescope.builtin").live_grep()
                end,
                desc = "Telescope live grep",
            },
            {
                "<leader>fb",
                function()
                    require("telescope.builtin").buffers()
                end,
                desc = "Telescope buffers",
            },
        },
        dependencies = { 
            "nvim-lua/plenary.nvim",
            "sharkdp/fd",
            "nvim-tree/nvim-web-devicons",
            "nvim-treesitter/nvim-treesitter",
            "nvim-telescope/telescope-ui-select.nvim",
            { 
                "nvim-telescope/telescope-fzf-native.nvim", 
                build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
            },
        },
        config = function()
            require('telescope').setup({ 
                extensions = { 
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({
                            -- even more opts
                        }),
                        fzf = { 
                            fuzzy = true,             
                            override_generic_sorter = true,
                            override_file_sorter = true, 
                            case_mode = "smart_case", 
                        },
                    },
                },
            })
            pcall(require("telescope").load_extension, "fzf")
            pcall(require("telescope").load_extension, "ui-select")
        end
    },
}


