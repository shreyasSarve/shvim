
local function print_tbl(tbl,indent)
   indent = indent or 0
    local spaces = string.rep("  ", indent) -- Two spaces for each level of indentation

    if next(tbl) == nil then
        print(spaces .. "{}")
        return
    end

    print(spaces .. "{")
    local arrayIndices = {} -- To track consecutive integer keys for arrays
    local maxIndex = 0

    -- First pass: Print arrays (consecutive integer keys)
    for k, v in ipairs(tbl) do
        arrayIndices[k] = true
        maxIndex = k
        local valStr = type(v) == "table" and print_tbl(v, indent + 1) or tostring(v)
        print(spaces .. "  [" .. k .. "] = " .. valStr)
    end

    -- Second pass: Print non-array keys
    for k, v in pairs(tbl) do
        if not arrayIndices[k] then
            local keyStr = tostring(k)
            local valStr = type(v) == "table" and print_tbl(v, indent + 1) or tostring(v)
            print(spaces .. "  " .. keyStr .. " = " .. valStr)
        end
    end

    print(spaces .. "}")
end

local set_keymaps = function(mappings)
  local keymap=vim.api.nvim_set_keymap
  for _, map in ipairs(mappings) do
    keymap(map.mode, map.key, map.cmd, map.opts)
  end
end

local function mapper(mode, key, cmd, opts)
  local mapping = {
    mode = mode,
    key = key,
    cmd = cmd,
    opts = opts or { noremap = true, silent = true }
  }
  return mapping
end

local insert = function (M,mode,key,cmd,opts)
  table.insert(M,mapper(mode,key,cmd,opts))
end

return {
  insert = insert,
  set_keymaps = set_keymaps,
  mapper = mapper,
  print_table = print_tbl,
}
