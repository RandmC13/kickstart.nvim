return {
  'vzze/calculator.nvim',
  init = function()
    vim.api.nvim_create_user_command('Calculate', 'lua require("calculator").calculate()', { ['range'] = 1, ['nargs'] = 0 })
  end,
}
