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

return {
  tbl_print = print_tbl
}
