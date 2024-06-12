return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local bufferline = require 'bufferline'
    bufferline.setup {
      options = {
        style_preset = bufferline.style_preset.minimal,
        buffer_close_icon = '',
        close_icon = '',
        tab_size = 15,
        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = false,
      },
    }
  end,
}
