return {
  {
    "nanotech/jellybeans.vim",
    lazy = false,
    name = "jellybeans",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "jellybeans"
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
      vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
      end,
  }
}


