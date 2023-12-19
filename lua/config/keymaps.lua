-- Function to set key mappings
local function set_keymaps(mappings)
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


local M = {}

M.file_tree_keymaps = {
  { mode = 'n', key = '<leader>e', cmd = ':NvimTreeFocus<CR>', opts = { noremap = true, silent = true } },
  { mode = 'n', key = '<leader>t', cmd = ':NvimTreeToggle<CR>', opts = { noremap = true, silent = true } },
  { mode = 'n', key = '<A-t>', cmd = ':NvimTreeToggle<CR>', opts = { noremap = true, silent = true } },
  { mode = 'i', key = '<A-t>', cmd = '<C-o>:NvimTreeToggle<CR>', opts = { noremap = true, silent = true } },
  { mode = 'v', key = '<A-t>', cmd = '<Esc>:NvimTreeToggle<CR>', opts = { noremap = true, silent = true } }
}

-- Pane Navigation: Keymaps for navigating between panes/windows
M.pane_navigation_keymaps = {
  { mode = 'n', key = '<C-h>', cmd = '<C-w>h', opts = {} },  -- Navigate Left
  { mode = 'n', key = '<C-j>', cmd = '<C-w>j', opts = {} },  -- Navigate Down
  { mode = 'n', key = '<C-k>', cmd = '<C-w>k', opts = {} },  -- Navigate Up
  { mode = 'n', key = '<C-l>', cmd = '<C-w>l', opts = {} }   -- Navigate Right
}

-- Window Management: Keymaps for managing windows and splits
M.window_management_keymaps = {
  { mode = 'n', key = '<leader>\\', cmd = ':vsplit<CR>', opts = {} },  -- Split Vertically
  { mode = 'n', key = '<leader>-', cmd = ':split<CR>', opts = {} },   -- Split Horizontally
  { mode = 'n', key = '<leader>sm', cmd = ':MaximizerToggle<CR>', opts = {} }  -- Toggle Minimize
}

-- Indenting: Keymaps for adjusting the indentation of selected text
M.indenting_keymaps = {
  { mode = 'v', key = '<', cmd = '<gv', opts = {} },
  { mode = 'v', key = '>', cmd = '>gv', opts = {} }
}

-- Comments: Keymaps for commenting and uncommenting lines or selected text
M.comments_keymaps = {
   { mode = 'n', key = '<C-_>', cmd = 'gcc', opts = { noremap = false } },
   { mode = 'v', key = '<C-_>', cmd = 'gcc', opts = { noremap = false } },
   { mode = 'i', key = '<C-_>', cmd = '<C-o>gcc', opts = { noremap = false } }
}

M.buffer_navigations = {
  { mode = 'n' , key = '<C-n>' , cmd = ':bnext<CR>', opts = { silent = true , noremap = false } },
  { mode = 'n' , key = '<C-m>' , cmd = ':bpre<CR>', opts = { silent = true , noremap = false } },
}

-- Editing
M.editing = {
  mapper('n','<C-z>',':undo<CR>'), -- undo in files
  mapper('n','<C-y>',':redo<CR>'), -- redo in files 
 
  -- Duplicating Line
  mapper('i','<C-d>','<Esc>yypA'), -- duplicate current line DOWN & cursor at end of the line 
  mapper('n','<C-d>','<Esc>yyp'), -- duplicate current line DOWN
  -- Moving line upwards
 
  mapper('n','<A-k>',':m .-2<CR>=='), -- move current line UP (N)
  mapper('n','<A-Up>',':m .-2<CR>=='), -- move current line UP (N)
  mapper('i','<A-k>','<C-o>:m .-2<CR>'), -- move current line UP (I)
  mapper('i','<A-Up>','<C-o>:m .-2<CR>'), -- move current line UP (I)

  -- Moving line downwards
  mapper('n','<A-j>',':m .+1<CR>=='), -- move current line DOWN (N)
  mapper('n','<A-Down>',':m .+1<CR>=='), -- move current line DOWN (N)
  mapper('i','<A-j>','<C-o>:m .+1<CR>'), -- move current line DOWN (I) 
  mapper('i','<A-Down>','<C-o>:m .+1<CR>'), -- move current line DOWN (I)
}

-- Set all keymappings

for _, value in pairs(M) 
  do
    set_keymaps(value)
end

