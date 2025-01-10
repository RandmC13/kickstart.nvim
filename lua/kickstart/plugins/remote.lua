return {
  'amitds1997/remote-nvim.nvim',
  version = '*', -- Pin to GitHub releases
  dependencies = {
    'nvim-lua/plenary.nvim', -- For standard functions
    'MunifTanjim/nui.nvim', -- To build the plugin UI
    'nvim-telescope/telescope.nvim', -- For picking b/w different remote methods
  },
  keys = {
    { '<leader>Rr', '<CMD>RemoteStart<CR>', desc = 'Open remote session' },
    { '<leader>RR', '<CMD>RemoteStop<CR>', desc = 'Close remote session' },
    { '<leader>Ri', '<CMD>RemoteInfo<CR>', desc = 'Info about current sessions' },
  },
  config = true,
}
