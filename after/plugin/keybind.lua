local wk = require("which-key")

local telescope_builin = require('telescope.builtin')

wk.register({
  -- Neotree binds
  e = {"<cmd>Neotree action=focus<cr>", "Focus Neotree"},
  E = {"<cmd>Neotree action=focus toggle<cr>", "Open Neotree"},
  -- Telescope binds
  f = {
    name = 'Files',
    s = {"<cmd>write<cr>", "Save file"},
    f = {telescope_builin.find_files, "Find Files"},
    o = {telescope_builin.oldfiles, "Find Recent Files"},
  },
  -- Tab binds
  b = {
    name = 'Tabs',
    b = {"<cmd>tabprevious<cr>", "Previous Tab"},
    n = {"<cmd>tabnext<cr>", "Next Tab"},
    c = {"<cmd>tabclose<cr>", "Close Tab"},
    C = {"<cmd>tabonly<cr>", "Close All Other Tabs"},
  },
  -- Quit
  q = {
    name = "Quit",
    q = {"<cmd>quitall<cr>", "Quit All No Save"},
  },
}, { prefix = "<leader>" })


-- Bind control s to save file in normal mode (command mode)
vim.api.nvim_set_keymap("n", "<C-s>", "<cmd>write<cr>", {noremap = true, silent = true})
