return { "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    transparent_background = false,
  },
  config = function ()
    vim.cmd.colorscheme "catppuccin"
  end

}
