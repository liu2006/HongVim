return {
    {
        "akinsho/toggleterm.nvim",
        lazy = false,
        version = "*",
        keys = {
            { "<leader>ft", "<cmd>ToggleTerm<CR>", desc = "terminal float" },
        },
        config = function()
            function _G.set_terminal_keymaps()
                local opts = {buffer = 0}
                vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
                vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
                vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
                vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
                vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
            end
            vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
            require("toggleterm").setup({
                shell = vim.o.shell,      -- change the default shell
                persist_size = false,
                shade_filetypes = {},
                shade_terminals = false,
                shading_factor = 1,       
                direction = 'float', -- | 'horizontal' | 'window' | 'float',
                float_opts = {
                    border = 'curved', -- single/double/shadow/curved
                    width = math.floor(0.7 * vim.fn.winwidth(0)),
                    height = math.floor(0.7 * vim.fn.winheight(0)),
                    winblend = 4,
                },
            })
        end,
    },
}
