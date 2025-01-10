return {
  { 'seandewar/nvimesweeper', keys = { { '<leader>gm', '<cmd>Nvimesweeper<cr>', desc = 'Play Minesweeper' } } },
  {
    'alanfortlink/blackjack.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = { { '<leader>gb', '<cmd>BlackJackNewGame<cr>', desc = 'Play Blackjack' } },
    opts = {
      scores_path = '/home/sam/.local/share/nvim/blackjack_scores.json',
    },
  },
  {
    'eandrju/cellular-automaton.nvim',
    keys = {
      { '<leader>gcm', '<cmd>CellularAutomaton make_it_rain<cr>', desc = 'Make buffer rain' },
      { '<leader>gcl', '<cmd>CellularAutomaton game_of_life<cr>', desc = "Conway's Game of Life in Buffer" },
    },
  },
  {
    'rktjmp/playtime.nvim',
    keys = { { '<leader>gp', '<cmd>Playtime<cr>', desc = 'Start Playtime' } },
    opts = {
      ['window-position'] = 'nw',
    },
  },
}
