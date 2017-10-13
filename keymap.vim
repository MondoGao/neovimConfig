map <Space> <leader>

" b - buffers
map <silent> <leader>nb :CtrlSpace<cr>

" d - docs
map <silent> <leader>dd :YcmCompleter GetDoc<cr>
map <silent> <leader>dt :YcmCompleter GetType<cr>

" e - errors
map <silent> <leader>ep <Plug>(ale_previous_wrap)
map <silent> <leader>en <Plug>(ale_next_wrap)
map <silent> <leader>el :lopen<cr>

" f - files
map <silent> <leader>ff :CtrlSpace o<cr>
map <silent> <leader>fr :CtrlPMRU<cr>

" h - hunks
 
" t - NERDTree
map <silent> <leader>tt :NERDTreeToggle<cr>
map <silent> <leader>tm :NERDTreeMirrow<cr> 
map <silent> <leader>tj :NERDTreeFind<cr> 
map <silent> <leader>tf :NERDTreeFocus<cr>

" u - undo
map <silent> <leader>uu :UndotreeToggle<cr>
map <silent> <leader>uf :UndotreeFocus<cr>

" j - jump
map <silent> <leader>jc <Plug>(easymotion-bd-f)

" g - goto
map <silent> <leader>gg :YcmCompleter GoTo<cr>
map <silent> <leader>gd :YcmCompleter GoToDefinition<cr>
map <silent> <leader>gr :YcmCompleter GoToReferences<cr>

" r - refactor
map <silent> <leader>rr :YcmCompleter RefactorRename 

" c - comments

" v - vim
map <silent> <leader>ve :vsplit $MYVIMRC<cr>
map <silent> <leader>vs :source $MYVIMRC<cr>
map <silent> <leader>vq :qa!<cr>

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

map <c-h> <Plug>(expand_region_expand)
map <c-l> <Plug>(expand_region_shrink)
nmap <c-space> <nul> 

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
