-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<leader>0', '<cmd>silent Neotree reveal<CR>', desc = 'Focus Neotree on current file' },
    { '<leader>E', '<cmd>silent Neotree action=focus toggle<CR>', desc = 'Toggle Neotree' },
  },
  opts = {
    window = {
      mappings = {
        ['l'] = 'open',
      },
    },
  },
}
