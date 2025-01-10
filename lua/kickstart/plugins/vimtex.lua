return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = 'mupdf'
    vim.g.vimtex_view_general_viewer = 'mupdf'
    vim.g.vimtex_compiler_latexmk = {
      options = {
        '-verbose',
        '-bibtex',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
      },
    }
  end,
}
