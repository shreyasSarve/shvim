local desc = ""
local insert = require("util.keymapper").insert

local M = {}
local opts = { noremap = false }

insert(M,'n',  '<C-_>',  'gcc',  opts )
insert(M,'v',  '<C-_>',  'gcc',  opts )
insert(M,'i',  '<C-_>',  '<C-o>gcc',  opts )

return {
  keys = M,
  desc = desc
}

