vim.g.mapleader = " "
-- General
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
-- Window splitting
vim.keymap.set("n", "<leader>o", ":vsplit<CR>")
vim.keymap.set("n", "<leader>i", ":split<CR>")
-- Window navigation
vim.keymap.set("n", "<leader>h>", "<:C-w>h<CR>")
vim.keymap.set("n", "<leader>l", "<:C-w>l<CR>")
vim.keymap.set("n", "<leader>k", "<:C-w>k<CR>")
vim.keymap.set("n", "<leader>j", "<:C-w>j<CR>")
-- Line movement
-- vim.keymap.set("v", "J", ":m '<+1<CR>gv=gv", { desc - "Move selection down" })
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc - "Move selection up" })
