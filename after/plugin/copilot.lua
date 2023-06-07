-- Can't use tab since it's used by cmp
vim.cmd [[imap <silent><script><expr> <C-a> copilot#Accept("\<CR>")]]
vim.g.copilot_no_tab_map = true

vim.keymap.set('i', '<M-.>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<M-,>', '<Plug>(copilot-previous)')

