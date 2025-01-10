return {
  'princejoogie/chafa.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'm00qek/baleia.nvim',
  },
  opts = {
    render = {
      min_padding = 2,
      show_label = true,
    },

    events = {
      update_on_nvim_resize = true,
    },
  },
}
