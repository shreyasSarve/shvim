local keys = require("keys.lsconfig").keys
local set_mappings = require("util.keymapper").set_keymaps

local on_attach = function(_, bufnr)
   for i = 1 , #keys do
      keys[i].opts.buffer = bufnr
   end
   set_mappings(keys)
end


return {
on_attach = on_attach
}
