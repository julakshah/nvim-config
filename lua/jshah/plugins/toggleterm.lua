return   {
  'akinsho/toggleterm.nvim',
  version = "*", -- if things go wrong specify version in future
  config = function()
    require("toggleterm").setup{
      open_mapping = [[<leader>\]],
    }
  end
}
