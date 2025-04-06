return {
    { 
        "akinsho/bufferline.nvim",
        lazy = false,
        version = "*", 
        dependencies = { 
            "nvim-tree/nvim-web-devicons" 
        },
        opts = {},
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        lazy = false,
        opts = { 
            indent = { 
                char = "│",
                tab_char = "│",
                smart_indent_cap = false,
            },
            scope = { show_start = false, show_end = false },
            exclude = { 
                filetypes = { 
                    "Trouble",
                    "alpha",
                    "dashboard",
                    "help",
                    "lazy",
                    "mason",
                    "neo-tree",
                    "notify",
                    "snacks_dashboard",
                    "snacks_notif",
                    "snacks_terminal",
                    "snacks_win",
                    "toggleterm",
                    "trouble", 
                }, 
            },
        },
    },
    { 
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*", 
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = "base16",
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        event = "VeryLazy",
        init = function() 
            vim.g.lualine_laststatus = vim.o.laststatus 
            if vim.fn.argc(-1) > 0 then 
                vim.o.statusline = " " 
            else 
                vim.o.laststatus = 0 
            end 
        end,
        opts = {
            options = { 
                theme = "base16",
                globalstatus = vim.o.laststatus == 3,
                disabled_filetypes = { 
                    statusline = { 
                        "dashboard", "alpha", "ministarter", "snacks_dashboard" 
                    }, 
                },
            },
        },
    },
    { 
        "nvim-tree/nvim-web-devicons",
        enabled = vim.g.have_nerd_font,
        opts = {},
    },
}

