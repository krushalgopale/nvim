return {
  "akinsho/toggleterm.nvim",
  config = function()
    require('toggleterm').setup({
      size = 10,
      open_mapping = [[<C-\>]],
      direction = "horizontal",
      close_on_exit = true,
      shade_terminals = true,
    })
  end,
}
