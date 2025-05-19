return {
  "ThePrimeagen/vim-be-good",
  config = function()
    vim.keymap.set("n", "<leader>vg", vim.cmd.VimBeGood)
  end,
}
