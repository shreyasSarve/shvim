" Key Mappings Nvim
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :bn<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-z> :undo<CR>
nnoremap <C-y> :redo<CR>

" End of line
nnoremap <C-S-Right> <End> 
inoremap <C-S-Right> <End>

" Start of line
nnoremap <C-S-Left> <Home>
inoremap <C-S-Left> <Home>

" Pasting directly from clipboard
nnoremap <C-v> <C-o>"+p

" Moving line upwords
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Up> <C-o>:m .-2<CR>
nnoremap <A-k> :m .-2<CR>==
inoremap <A-k> <C-o>:m .-2<CR>

" Moving line downwards
nnoremap <A-Down> :m .+1<CR>==
inoremap <A-Down> <C-o>:m .+1<CR>
nnoremap <A-j> :m .+1<CR>==
inoremap <A-j> :m <C-o>.+1<CR>

" Refresh
nnoremap <C-r> :source ~/.config/nvim/init.vim<CR>
inoremap <C-r> :source ~/.config/nvim/init.vim<CR>

" Duplicating Current line
nnoremap <C-d> <Esc>dd2PjA<Esc>
inoremap <C-d> <Esc>dd2PjA

" Selecting All 
nnoremap <C-a> <Esc>ggVG
inoremap <C-a> <Esc>ggVG

" Search Files 
nnoremap <C-p> <Esc>:Telescope find_files<CR>
inoremap <C-p> <Esc>:Telescope find_files<CR>

" Switchin betweeen opened Files
nnoremap <C-Tab> <Esc>:bn<CR>

