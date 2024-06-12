return {
  'stevearc/oil.nvim',
  opts = {
    default_file_explorer = true,
    columns = {
      'icon',
      'size',
    },
    view_options = {
      show_hidden = true,
    },
  },
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
