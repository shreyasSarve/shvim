
local set_mapping = require("util.keymapper").set_keymaps
local keys = require("keys")

for _,value in pairs(keys) do
  set_mapping(value.keys)
end

