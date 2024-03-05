vim.opt.termguicolors = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

-- for auto-commenting on new line
vim.opt.formatoptions:append("r")

-- maybe I'll use this some day
-- vim.opt.undodir = {os.getenv("HOME") .. "/.vim/undodir"}

vim.opt.incsearch = true
vim.opt.updatetime = 50

-- keybindings
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("", "<leader>ff", function()
    require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "[F]ormat" })
