return {
    "nvim-treesitter/nvim-treesitter-context",
    build = ":TSUpdate",
    opts = { 
        ensure_installed = "all",
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
        mode = "cursor", 
        max_lines = 3, 
    }
}
