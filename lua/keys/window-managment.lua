local desc = ""
local insert = require("util.keymapper").insert

local M = {}
local opts = {noremap = true , silent = true }

insert(M, 'n', '<leader>\\', ':vsplit<CR>',opts)  -- Split Vertically
insert(M,  'n', '<leader>-',  ':split<CR>',opts)   -- Split Horizontally
insert(M,  'n', '<leader>sm', ':MaximizerToggle<CR>',opts)  -- Toggle Minimize

return {
  keys = M,
  desc = desc
}
