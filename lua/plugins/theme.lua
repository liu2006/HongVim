return { 
    { 
        "catppuccin/nvim", 
        lazy = false, 
        name = "catppuccin", 
        priority = 1000, 
        opts = {
            flavour = "Frappe",
            transparent_background = true,
            term_colors = true,
            default_integrations = true,
            term_colors = true,
        },
        config = function(_, opts)
            require("catppuccin").setup(opts)
            vim.cmd[[colorscheme catppuccin]]
        end
    },
}
