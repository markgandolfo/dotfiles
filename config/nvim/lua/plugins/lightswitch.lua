
return {
  -- dir = '~/src/lua/lightswitch.nvim',
  'markgandolfo/lightswitch.nvim',
  dependencies = { 'MunifTanjim/nui.nvim' },
  config = function()
    require('lightswitch').setup {
      toggles = {
        {
          name = 'Copilot',
          enable_cmd = ':Copilot enable<CR>',
          disable_cmd = ':Copilot disable<CR>',
          state = true,
        },
        {
          name = 'Highlight Colors',
          enable_cmd = "require('nvim-highlight-colors').turnOn()",
          disable_cmd = "require('nvim-highlight-colors').turnOff()",
          state = true,
        },
        {
          name = 'Git Signs',
          enable_cmd = ':Gitsigns toggle_signs<CR>',
          disable_cmd = ':Gitsigns toggle_signs<CR>',
          state = true,
        },
        {
          name = "Wrap",
          enable_cmd = ':set wrap<CR>',
          disable_cmd = ':set nowrap<CR>',
          state = vim.wo.wrap,
        }
      },
    }
  end,
}

