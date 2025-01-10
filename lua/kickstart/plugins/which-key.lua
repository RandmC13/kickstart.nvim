return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    require('which-key').add {
      { '<leader>c', group = '[C]ode' },
      { '<leader>c_', hidden = true },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>d_', hidden = true },
      { '<leader>g', group = 'Play [G]ame' },
      { '<leader>g_', hidden = true },
      { '<leader>gc', group = '[C]ellular Automata' },
      { '<leader>gc_', hidden = true },
      { '<leader>h', group = 'Git [H]unk' },
      { '<leader>h_', hidden = true },
      { '<leader>l', group = '[L]atex' },
      { '<leader>l_', hidden = true },
      { '<leader>r', group = '[R]ename' },
      { '<leader>r_', hidden = true },
      { '<leader>R', group = '[R]emote' },
      { '<leader>R_', hidden = true },
      { '<leader>s', group = '[S]earch' },
      { '<leader>s_', hidden = true },
      { '<leader>t', group = '[T]oggle or [T]erminal' },
      { '<leader>t_', hidden = true },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>w_', hidden = true },
      { '<leader>x', group = 'Trouble' },
      { '<leader>x_', hidden = true },
      { 's', group = '[S]urrounding' },
    }
    -- Keep menu up when using surround
    -- visual mode
    require('which-key').add {
      { '<leader>h', desc = 'Git [H]unk', mode = 'v' },
    }
  end,
}
