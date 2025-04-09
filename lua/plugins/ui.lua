return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        event = "VeryLazy",
        opts = {},
    },
    { 
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        version = "*", 
        dependencies = { 
            "nvim-tree/nvim-web-devicons" 
        },
        opts = {},
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "VeryLazy",
        main = "ibl",
        opts = { 
            indent = { 
                char = "│",
                tab_char = "│",
            },
        },
    },
    { 
        "utilyre/barbecue.nvim",
        event = "VeryLazy",
        name = "barbecue",
        version = "*", 
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = "auto",
            create_autocmd = false,
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
    },
    { 
        "nvim-tree/nvim-web-devicons",
        enabled = vim.g.have_nerd_font,
        opts = {},
    },
}

