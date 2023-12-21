local desc = "Basic editing block / lines in file"
local insert = require("util.keymapper").insert

local M = {}
local opts = { noremap = true , silent = true }

insert(M,'n','<C-z>',':undo<CR>',opts) -- undo in files
insert(M,'n','<C-y>',':redo<CR>',opts) -- redo in files 

-- Duplicating Line
insert(M,'i','<C-d>','<Esc>yypA',opts) -- duplicate current line DOWN & cursor at end of the line 
insert(M,'n','<C-d>','<Esc>yyp',opts) -- duplicate current line DOWN

-- Moving line upwards 
insert(M,'n','<A-k>',':m .-2<CR>==',opts) -- move current line UP (N)
insert(M,'n','<A-Up>',':m .-2<CR>==',opts) -- move current line UP (N)
insert(M,'i','<A-k>','<C-o>:m .-2<CR>',opts) -- move current line UP (I)
insert(M,'i','<A-Up>','<C-o>:m .-2<CR>',opts) -- move current line UP (I)

-- Moving line downwards
insert(M,'n','<A-j>',':m .+1<CR>==',opts) -- move current line DOWN (N)
insert(M,'n','<A-Down>',':m .+1<CR>==',opts) -- move current line DOWN (N)
insert(M,'i','<A-j>','<C-o>:m .+1<CR>',opts) -- move current line DOWN (I) 
insert(M,'i','<A-Down>','<C-o>:m .+1<CR>',opts) -- move current line DOWN (I)

-- Select content of whole file
insert(M,'n','<C-a>','<ESC>ggVG',opts)
insert(M,'v','<C-a>','<ESC>ggVG',opts)

-- Moving Selection Downwards
insert(M,'v', '<A-j>', ':m \'>+1<CR>gv=gv',opts)
insert(M,'v', '<A-Down>', ':m \'>+1<CR>gv=gv',opts)

-- Moving Selection Upwards
insert(M,'v', '<A-k>', ':m \'<-2<CR>gv=gv',opts)
insert(M,'v', '<A-Up>', ':m \'<-2<CR>gv=gv',opts)

-- Wrapping With brackets
insert(M, 'v',  '{',  'c{<esc>pa}<esc>v', opts)
insert(M, 'v',  '[',  'c[<esc>pa]<esc>v', opts)
insert(M, 'v',  '(',  'c(<esc>pa)<esc>v', opts)




return {
keys = M ,
desc = desc
}
