vim.g.mapleader = " "
-- General
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")
vim.keymap.set("n", "<leader>w", "w")
vim.keymap.set("n", "<leader>q", "q")
-- Window splitting
vim.keymap.set("n", "<leader>o", "vsplit")
vim.keymap.set("n", "<leader>o", "split")
-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")
-- Line movement
-- vim.keymap.set("v", "J", ":m '<+1<CR>gv=gv", { desc - "Move selection down" })
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc - "Move selection up" })
