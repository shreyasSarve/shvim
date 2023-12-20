local desc = ""
local insert = require("util.keymapper").insert

local M = {}

insert(M, 'n' ,  '<C-n>' ,  ':bnext<CR>',  { silent = true , noremap = false } )
insert(M, 'n' ,  '<C-m>' ,  ':bpre<CR>',  { silent = true , noremap = false } )

return {
  keys = M,
  desc = desc
}
