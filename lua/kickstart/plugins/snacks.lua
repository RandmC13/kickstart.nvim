return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,

  -- --@type snacks.Config
  config = function()
    require('snacks').setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      bigfile = { enabled = true },
      dashboard = {
        enabled = true,
        preset = {
          header = [[
                                                      ___  
                                                   ,o88888 
                                                ,o8888888' 
                          ,:o:o:oooo.        ,8O88Pd8888"  
                      ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"    
                    ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"      
                   , ..:.::o:ooOoOOOO8OOOOo.FdO8O8"        
                  , ..:.::o:ooOoOO8O888O8O,COCOO"          
                 , . ..:.::o:ooOoOOOO8OOOOCOCO"            
                  . ..:.::o:ooOoOoOO8O8OCCCC"o             
                     . ..:.::o:ooooOoCoCCC"o:o             
                     . ..:.::o:o:,cooooCo"oo:o:            
                  `   . . ..:.:cocoooo"'o:o:::'            
                  .`   . ..::ccccoc"'o:o:o:::'             
                 :.:.    ,c:cccc"':.:.:.:.:.'              
               ..:.:"'`::::c:"'..:.:.:.:.:.'               
             ...:.'.:.::::"'    . . . . .'                 
            .. . ....:."' `   .  . . ''                    
          . . . ...."'    __                _              
          .. . ."'     /\ \ \___  ___/\   /(_)_ __ ___     
         .            /  \/ / _ \/ _ \ \ / | | '_ ` _ \    
                     / /\  |  __| (_) \ V /| | | | | | |   
                     \_\ \/ \___|\___/ \_/ |_|_| |_| |_|   
                                                           
        ]],
          ---@type snacks.dashboard.Item[]
          keys = {
            { icon = ' ', key = 'n', desc = 'New File', action = ':ene | startinsert' },
            { icon = ' ', key = 'f', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
            { icon = ' ', key = 'g', desc = 'Find Text', action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = ' ', key = 'r', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = ' ', key = 'p', desc = 'Recent Projects', action = '<leader>p' },
            { icon = ' ', key = 'c', desc = 'Config', action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            -- { icon = ' ', key = 's', desc = 'Restore Session', section = 'session' },
            { icon = '󰒲 ', key = 'L', desc = 'Lazy', action = ':Lazy', enabled = package.loaded.lazy ~= nil },
            { icon = '󰦗 ', key = 'M', desc = 'Mason', action = ':Mason' },
          },
        },
        sections = {
          -- {
          --   section = 'terminal',
          --   pane = 1,
          --   cmd = 'chafa ~/.config/nvim/indianajones3.png --format symbols --symbols vhalf --size 35x35; sleep .1',
          --   height = 25,
          --   padding = 0,
          -- },
          { section = 'header', pane = 1 },
          { section = 'keys', pane = 2, indent = 2, padding = 1 },
          { icon = ' ', pane = 2, title = 'Recent Files', section = 'recent_files', indent = 2, padding = 1 },
          { icon = ' ', pane = 2, title = 'Projects', section = 'projects', indent = 2, padding = 1 },
          { icon = ' ', key = 'u', desc = 'Update', action = ':Lazy update', pane = 2 },
          { icon = ' ', key = 'q', desc = 'Quit', action = ':qa', pane = 2 },
          { section = 'startup', pane = 2 },
        },
      },
      quickfile = { enabled = true },
    }
  end,
}
