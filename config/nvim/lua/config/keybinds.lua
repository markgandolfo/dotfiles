return {
  -- Highlight the word under the cursor
  vim.keymap.set('n', '<leader>*', function()
    vim.cmd.match(string.format('Visual /%s/', vim.fn.expand '<cword>'))
  end, { desc = 'Highlight word under cursor' }),

  -- Copy the current file path to the clipboard
  vim.keymap.set('n', '<Leader>cfr', function()
    local path = vim.fn.expand '%'
    vim.fn.setreg('+', path)
    print('Relative path copied: ' .. path)
  end, { silent = true, desc = 'Copy relative file name to clipboard' }),

  -- Copy the full file path to the clipboard
  vim.keymap.set('n', '<Leader>cfp', function()
    local path = vim.fn.expand '%:p'
    vim.fn.setreg('+', path)
    print('Full path copied: ' .. path)
  end, { silent = true, desc = 'Copy full path + file name to clipboard' }),

  -- Remove trailing whitespace and restore cursor position
  vim.keymap.set('n', '<leader>tw', 'mm:%s/\\s\\+$//e<CR>`m', { desc = 'Remove trailing whitespace and restore cursor position' }),

  vim.keymap.set('n', '<Leader>j', ':bnext<CR>', { desc = 'Next Buffer' }),
  vim.keymap.set('n', '<Leader>k', ':bprev<CR>', { desc = 'Prev Buffer' }),
  vim.keymap.set('n', '<Leader>bca', ':bufdo bd<CR>', { desc = 'Close all Buffers' }),
  vim.keymap.set('n', '<Leader>bce', ':%bd|e#<CR>', { desc = 'Close all Buffers execpt this one' }),
  vim.keymap.set('n', '<Leader>bcc', ':bd<CR>', { desc = 'Close current buffer' }),
  vim.keymap.set('n', '<Leader>bc!', ':bd!<CR>', { desc = 'Close current buffer without saving' }),

  -- faster movement around windows
  vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' }),
  vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' }),
  vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' }),
  vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' }),

  -- Diagnostic keymaps
  vim.keymap.set('n', '[d', function()
    vim.diagnostic.jump { count = 1, float = true }
  end, { desc = 'Go to previous [D]iagnostic message' }),

  vim.keymap.set('n', ']d', function()
    vim.diagnostic.jump { count = -1, float = true }
  end, { desc = 'Go to next [D]iagnostic message' }),

  vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' }),
  vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

}
