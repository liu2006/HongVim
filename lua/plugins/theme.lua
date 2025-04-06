return { 
    {
        "RRethy/base16-nvim",
        enabled = true,
        lazy = false,
        priority = 1000,
        dependencies = {
            "nvim-lualine/lualine.nvim",
            "utilyre/barbecue.nvim",
        },
        config = function()
            require('base16-colorscheme').with_config({
                transparent = true,
                telescope = false,
            })
            vim.cmd[[colorscheme base16-onedark]]
        end
    },
}
