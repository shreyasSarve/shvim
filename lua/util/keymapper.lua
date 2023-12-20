

local set_keymaps = function(mappings)
  for _, map in ipairs(mappings) do
    vim.api.nvim_set_keymap(map.mode, map.key, map.cmd, map.opts)
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
}
