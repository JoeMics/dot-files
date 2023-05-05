vim.opt.termguicolors = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- maybe I'll use this some day
-- vim.opt.undodir = {os.getenv("HOME") .. "/.vim/undodir"}

vim.opt.incsearch = true
vim.opt.updatetime = 50

-- keybindings
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<leader>ff', vim.lsp.buf.format)
