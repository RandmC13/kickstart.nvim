return {
  'folke/tokyonight.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  lazy = false,
  init = function()
    vim.cmd.colorscheme 'tokyonight-night'

    vim.o.background = 'dark'
    vim.cmd.hi 'Comment gui=none'
  end,
  opts = {},
}
