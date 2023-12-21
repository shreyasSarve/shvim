local desc = "Directory Navigations using NvimTree"
local insert = require("util.keymapper").insert

local opts = { noremap = true , silent = true }
local M = { }


insert(M, 'n', '<leader>e', ':NvimTreeFocus<CR>',         opts )
insert(M, 'n', '<leader>t', ':NvimTreeToggle<CR>',        opts )
insert(M, 'n', '<A-t>',     ':NvimTreeToggle<CR>',        opts )
insert(M, 'i', '<A-t>',     '<C-o>:NvimTreeToggle<CR>',   opts )
insert(M, 'v', '<A-t>',     '<Esc>:NvimTreeToggle<CR>',   opts )

return {
  keys = M,
  desc = desc
}
