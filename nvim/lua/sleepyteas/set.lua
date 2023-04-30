
vim.opt.nu = true
-- known bug: relative line numbers cause scrolling issue
-- vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- vim.opt.termguicolors = true
vim.opt.synmaxcol = 2048

vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 200

-- keybindings
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<leader>ff', vim.lsp.buf.format)
