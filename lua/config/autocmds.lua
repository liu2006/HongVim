vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "复制时高亮显示",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
vim.api.nvim_create_autocmd('TermOpen', {
    pattern = '*',
    command = 'resize 15x30',
})



