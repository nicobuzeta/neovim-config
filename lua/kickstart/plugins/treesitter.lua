vim.api.nvim_create_autocmd('FileType', {
  callback = function()
    local ok = pcall(vim.treesitter.start)
    if not ok then return end
  end,
})

return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
  },
}
