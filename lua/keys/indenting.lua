local desc = ""
local insert = require("util.keymapper").insert
local M = {}

local opts = {}

insert(M, 'v',  '<',  '<gv',  opts )
insert(M,'v', '>',  '>gv',    opts )

return {
  keys = M,
  desc = desc
}
