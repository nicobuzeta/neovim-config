---@type LazySpec
return {
  'nvimtools/none-ls.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvimtools/none-ls-extras.nvim' },
  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      sources = {
        -- null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.completion.spell,
        require 'none-ls.diagnostics.eslint_d',
        require 'none-ls.code_actions.eslint_d',
        -- require 'none-ls.diagnostics.eslint',
        -- require 'none-ls.code_actions.eslint',
      },
    }
  end,
}
