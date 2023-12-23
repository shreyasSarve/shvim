local desc = "Switching Between Buffers"
local insert = require("util.keymapper").insert

local M = {}
local opts = { noremap = true ,  silent = true }

  insert(M, 'n' ,  '<leader>;' ,  ':bn<CR>',opts )
  insert(M, 'n' ,  "<leader>'" , ':bp<CR>',opts )

return {
  keys = M,
  desc = desc
}
