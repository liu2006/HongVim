-------------------------------------------------------------------------------------------
--git add .
--git commit -m "首次提交"
--git remote add origin git@github.com:用户名/仓库名.git
--git push -u origin master
-------------------------------------------------------------------------------------------
if vim.loader then
    vim.loader.enable()
end
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.autoread = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.updatetime = 50
vim.opt.undofile = true
vim.opt.cursorline = true
vim.opt.termguicolors =true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.splitright = true 
vim.opt.splitbelow = true
vim.opt.fileencoding = "utf-8"
vim.opt.clipboard = "unnamedplus"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--------------------------------------------------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
--------------------------------------------------------------------------------------------
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--------------------------------------------------------------------------------------------
vim.opt.shell = "pwsh"
vim.opt.shellcmdflag = "-NoProfile -NoExit -Command",
--------------------------------------------------------------------------------------------
require("config.lazy")
require("config.autocmds")








