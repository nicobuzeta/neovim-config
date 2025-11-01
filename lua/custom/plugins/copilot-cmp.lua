---@type LazySpec
return {
  'giuxtaposition/blink-cmp-copilot',
  after = { 'copilot.lua', 'blink.cmp' },
  opt = {
    suggestion = { enabled = false },
    panel = { enabled = false },
  },
}
