-- set leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- spaces
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrePlugin = 1
vim.o.termguicolors = true

-- set the os' clipboard
vim.o.clipboard = "unnamedplus"

-- enable the mouse
vim.o.mouse = "a"
vim.o.showmode = false

-- line numbers / column layout / visuals
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'yes'
vim.t.cursorline = true       -- highlight the line the cursor is on
vim.o.scrolloff = 10          -- set at least 10 lines around cursor

-- nowrap
vim.o.wrap = false
vim.o.breakindent = true

-- save undo history
vim.o.undofile = true
vim.o.undolevels = 1000
vim.o.undoreload = 10000

-- nerdfonts
vim.g.have_nerd_font = true

-- speed things up
vim.o.updatetime = 250  -- Decrease update time
vim.o.timeoutlen = 300  -- Decrease mapped sequence wait time

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- hidden chars should be shown
vim.o.list = true
vim.o.listchars = 'tab: »,trail:·,nbsp:␣'

-- search things
vim.o.inccommand = 'split'
vim.o.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- load all files in the config directory
for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config') .. '/lua/config', [[v:val =~ '\.lua$']])) do
  require('config.' .. file:match('(.+)%.lua$'))
end
