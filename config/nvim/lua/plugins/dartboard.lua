return {
  {
    -- dir = '/home/mark/src/lua/dartboard.nvim', -- Local path to the plugin
    'markgandolfo/dartboard.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require('dartboard').setup {
        -- Your configuration options here
      }

      require('which-key').add {
        { '<leader>1', hidden = true },
        { '<leader>2', hidden = true },
        { '<leader>3', hidden = true },
        { '<leader>4', hidden = true },
        { '<leader>5', hidden = true },
        { '<leader>6', hidden = true },
        { '<leader>7', hidden = true },
        { '<leader>8', hidden = true },
        { '<leader>9', hidden = true },
      }
    end,
  },
}

