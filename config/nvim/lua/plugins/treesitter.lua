return { 
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
      ensure_installed = { 
        'bash', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'vim', 'vimdoc', 'gitcommit'
      },
      auto_install = true,
      highlight = {
        enable = true,
        addition_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby' } },
    },
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
    end
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    opts = {
      enable = true,
      mode = 'topline',
      max_lines = 3,
      trim_scope = 'outer'
    }
  }
}
