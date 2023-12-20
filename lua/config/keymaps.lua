local utils = require("util.keymapper")
local set_keymaps = utils.set_keymaps
local mapper = utils.mapper


-- local M = {}
--
--
-- -- Pane Navigation: Keymaps for navigating between panes/windows
-- -- Window Management: Keymaps for managing windows and splits
-- M.window_management_keymaps = {
-- }
--
-- -- Indenting: Keymaps for adjusting the indentation of selected text
-- M.indenting_keymaps = {
-- }
--
-- -- Comments: Keymaps for commenting and uncommenting lines or selected text
-- M.comments_keymaps = {
-- }
--
-- -- Switching Between Buffers
-- M.buffer_navigations = {
-- }
--
-- M.editing = {
-- }
--
-- -- Set all keymappings
-- for _, value in pairs(M)
--   do
--      set_keymaps(value)
--end

local set_mapping = require("util.keymapper").set_keymaps
local keys = require("keys")


for i = 1 , #keys do
  local value = keys[i]
  set_mapping(value.keys)
end


