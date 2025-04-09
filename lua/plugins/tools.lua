return {
    { 
        "nvim-neo-tree/neo-tree.nvim",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        keys = {
            {
                "<leader>e",
                function()
                    require("neo-tree.command").execute({ toggle = true })
                end,
            },
        },
        opts = {
            window = {
                mappings = {
                    ["l"] = "open",
                    ["h"] = "close_node",
                    ["<space>"] = "none",
                    ["Y"] = {
                        function(state)
                            local node = state.tree:get_node()
                            local path = node:get_id()
                            vim.fn.setreg("+", path, "c")
                        end,
                        desc = "Copy Path to Clipboard",
                    },
                    ["O"] = {
                        function(state)
                            require("lazy.util").open(state.tree:get_node().path, { system = true })
                        end,
                        desc = "Open with System Application",
                    },
                    ["P"] = { "toggle_preview", config = { use_float = false } },
                },
            },
            default_component_configs = {
                indent = {
                    with_expanders = true,
                    expander_collapsed = "",
                    expander_expanded = "",
                },
                git_status = {
                    symbols = {
                        unstaged  = "󰄱",
                        staged    = "󰱒",
                    },
                },
            },
        },
    },
    {
        "nvim-telescope/telescope.nvim",
        version = false,
        cmd = "Telescope",
        keys = {
            {
                "<leader>ff",
                function()
                    require("telescope.builtin").find_files()
                end,
            },
            {
                "<leader>fg",
                function()
                    require("telescope.builtin").live_grep()
                end,
            },
            {
                "<leader>fb",
                function()
                    require("telescope.builtin").buffers()
                end,
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
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        keys = {
            { 
                "<leader>tt", 
                function()
                    require("toggleterm").toggle()
                end,
            },
        },
        config = function()
            function _G.set_terminal_keymaps()
                local opts = {buffer = 0}
                vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
                vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
                vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]])
                vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
                vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]])
            end
            vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = "VeryLazy",
        cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
        opts = {
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = {
                "bash",
                "c",
                "diff",
                "html",
                "javascript",
                "jsdoc",
                "json",
                "jsonc",
                "lua",
                "luadoc",
                "luap",
                "markdown",
                "markdown_inline",
                "printf",
                "python",
                "query",
                "regex",
                "toml",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
                "xml",
                "yaml",
                "rust",
            },
        },
    },
}
