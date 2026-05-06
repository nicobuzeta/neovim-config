---@type LazySpec
return {
  'zbirenbaum/copilot.lua',
  event = 'InsertEnter',
  opts = {
    panel = {
      auto_refresh = true,
      keymap = {
        jump_prev = '<C-k>',
        jump_next = '<C-j>',
        accept = '<M-y>',
      },
    },
  },
  config = function(_, opts)
    require('copilot').setup(opts)
    vim.keymap.set('n', '<leader>co', '<cmd>Copilot panel<cr>', { desc = 'Open copilot panel' })
  end,
}
