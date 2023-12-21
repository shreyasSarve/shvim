local desc = "Pane Navigation: Keymaps for navigating between panes/windows"
local insert = require("util.keymapper").insert

local M = {}
local opts = {}

insert(M, 'n',  '<C-h>',  '<C-w>h',  opts )  -- Navigate Left
insert(M, 'n',  '<C-j>',  '<C-w>j',  opts )  -- Navigate Down
insert(M, 'n',  '<C-k>',  '<C-w>k',  opts )  -- Navigate Up
insert(M,'n',  '<C-l>',  '<C-w>l',   opts )   -- Navigate Right


return {
  keys = M,
  desc = desc
}
