return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  opts = {
    view = {
      side = "right",
      width = 40,
    }
  },
  keys = {
    { '<Leader>fb', ':NvimTreeToggle<CR>' },
    { '<Leader>fB', ':NvimTreeFindFile<CR>' },
  }
}
