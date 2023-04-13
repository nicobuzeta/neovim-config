local wk = require("which-key")

local telescope_builin = require('telescope.builtin')

wk.register({
  -- Neotree binds
  e = {"<cmd>Neotree action=focus<cr>", "Focus Neotree"},
  ['0'] = {"<cmd>Neotree action=focus<cr>", "Focus Neotree"},
  E = {"<cmd>Neotree action=focus toggle<cr>", "Open Neotree"},
  -- Previous Buffers
  ["<tab>"] = {"<cmd>b#<cr>", "Previous buffer"},
  -- Telescope Buffers
  ["<space>"] = {telescope_builin.buffers, "Find Open Buffers"},
  -- Trouble binds
  x = {
    name = 'Trouble',
    x = {"<cmd>TroubleToggle<cr>", "Diagnostics"},
    d = {"<cmd>TroubleToggle document_diagnostics<cr>", "Document Diagnostics"},
    w = {"<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace Diagnostics"},
    -- t = {"<cmd>TroubleToggle lsp_references<cr>", "Workspace Diagnostics"},
  },
  -- Telescope binds
  f = {
    name = 'Files',
    s = {"<cmd>write<cr>", "Save file"},
    f = {telescope_builin.find_files, "Find Files"},
    o = {telescope_builin.oldfiles, "Find Recent Files"},
    b = {telescope_builin.buffers, "Find Open Buffers"},
    d = {telescope_builin.diagnostics, "Diagnostics"},
  },
  -- Tab binds
  t = {
    name = 'Tabs',
    N = {"<cmd>tabnew<cr>", "New Tab"},
    b = {"<cmd>tabprevious<cr>", "Previous Tab"},
    n = {"<cmd>tabnext<cr>", "Next Tab"},
    c = {"<cmd>tabclose<cr>", "Close Tab"},
    C = {"<cmd>tabonly<cr>", "Close All Other Tabs"},
  },
  -- Buffer binds
  b = {
    name = 'Buffers',
    b = {"<cmd>TablineBufferPrevious<cr>", "Previous Buffer"},
    n = {"<cmd>TablineBufferNext<cr>", "Next Buffer"},
    c = {"<cmd>Bdelete<cr>", "Close Buffer"},
    C = {"<cmd>bufdo Bdelete<cr>", "Close All Buffers"},
  },
  -- Window binds
  w = {
    name = "Windows",
    h = {"<cmd>wincmd h<cr>", "Left Window"},
    j = {"<cmd>wincmd j<cr>", "Down Window"},
    k = {"<cmd>wincmd k<cr>", "Up Window"},
    l = {"<cmd>wincmd l<cr>", "Right Window"},
    ["<tab>"] = {"<c-w><c-p>", "Previous Window"},
  },
  -- Quit
  q = {
    name = "Quit",
    q = {"<cmd>quitall<cr>", "Quit All No Save"},
  },
}, { prefix = "<leader>" })


-- Bind control s to save file in normal mode (command mode)
vim.api.nvim_set_keymap("n", "<C-s>", "<cmd>write<cr>", {noremap = true, silent = true})
