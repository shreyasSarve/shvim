local desc = "Switching Between Buffers"
local insert = require("util.keymapper").insert

local M = {}
local opts = { noremap = true ,  silent = true }

insert(M, 'n' ,  '<C-n>' ,  ':TablineBufferNext<CR>',opts )
insert(M, 'n' ,  '<C-m>' ,  ':TablineBufferPrevious<CR>',opts)

return {
  keys = M,
  desc = desc
}
