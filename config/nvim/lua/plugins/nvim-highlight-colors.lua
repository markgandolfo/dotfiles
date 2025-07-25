return {
  'brenoprata10/nvim-highlight-colors',
  config = function()
    require('nvim-highlight-colors').setup {
      -- Render style options: 'background', 'foreground', 'virtual'
      render = 'background',

      -- Set virtual symbol (only used when render is set to 'virtual')
      virtual_symbol = '■',

      -- Set virtual symbol suffix (only used when render is set to 'virtual')
      virtual_symbol_prefix = '',
      virtual_symbol_suffix = ' ',

      -- Set virtual symbol position
      -- Possible values: 'inline', 'eol' (end of line), 'eow' (end of word)
      virtual_symbol_position = 'inline',

      -- Highlight hex colors, e.g. '#FFFFFF'
      enable_hex = true,

      -- Highlight short hex colors e.g. '#fff'
      enable_short_hex = true,

      -- Highlight rgb colors, e.g. 'rgb(0 0 0)'
      enable_rgb = true,

      -- Highlight hsl colors, e.g. 'hsl(150deg 30% 40%)'
      enable_hsl = true,

      -- Highlight CSS variables, e.g. 'var(--testing-color)'
      enable_var_usage = true,

      -- Highlight named colors, e.g. 'green'
      enable_named_colors = true,

      -- Highlight tailwind colors, e.g. 'bg-blue-500'
      enable_tailwind = false,

      -- Set custom colors
      -- Label must be properly escaped with escape characters if needed
      custom_colors = {
        { label = '%-%-theme%-primary%-color', color = '#0f1419' },
        { label = '%-%-theme%-secondary%-color', color = '#5c6370' },
      },
    }
  end,
}

