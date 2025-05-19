return {
  "rebelot/kanagawa.nvim",
  lazy = false, -- load before lazy (immediately)
  priority = 1000, -- make this one of the first to load
  config = function() vim.cmd.colorscheme "kanagawa-dragon" end
}

