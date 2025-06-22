return {
  {
    'github/copilot.vim',
    config = function()
      -- Set the key mapping for accepting suggestions
      vim.g.copilot_no_tab_map = true
      vim.api.nvim_set_keymap('i', '<C-;>', 'copilot#Accept("<CR>")', { expr = true, silent = true, noremap = true })
    end,
  },
}

