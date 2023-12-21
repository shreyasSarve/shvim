

local function loader()
  local paths = vim.split(vim.fn.glob("~/.config/nvim/lua/keys/*.lua"), '\n')
  local imported_tables = {}
  for _, path in ipairs(paths) do
    local file = string.gsub(path:match("([^/]+)$"), "%.lua$", "")
    if file ~= "init" then
      local module = require("keys." .. file)

      -- Check if the module returns a table and add it to the collection
      if type(module) == "table" and module.load ~= false  then
        imported_tables[file] = module
      else
        print("Warning: Module '" .. file .. "' does not return a table. Skipping.")
      end
    end
  end
return imported_tables
end

local imported_tables = loader()

return imported_tables
