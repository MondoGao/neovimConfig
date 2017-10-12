set backup             " keep a backup file (restore to previous version)
let &backupdir = &backupdir[2:]
set undofile           " keep an undo file (undo changes after closing)
set ruler              " show the cursor position all the time
set showcmd            " display incomplete commands
set nu rnu
set hlsearch
set hidden
set updatetime=250
syntax on
filetype plugin indent on
" Appearance
set termguicolors
colo molokai
map <Space> <leader>

" init plugins
execute 'source' fnamemodify(expand("<sfile>"), ':h:p').'/plug.vim'
 
" a - Application
" al - Leaderf
let g:Lf_ShortcutF = "<leader>alf"
let g:Lf_ShortcutB = "<leader>alb"
nnoremap <leader>algb :LeaderfBufferAll<cr>
nnoremap <leader>alr :LeaderfMru<cr>
nnoremap <leader>algr :LeaderfMruCwd<cr>
nnoremap <leader>alf :LeaderfFunction<cr>
nnoremap <leader>all :LeaderfLine<cr>
nnoremap <leader>alhc :LeaderfHistoryCmd<cr>
nnoremap <leader>alhs :LeaderfHistorySearch<cr>

" t - NERDTree
map <leader>tt :NERDTreeToggle<cr>
map <leader>tm :NERDTreeMirrow<cr> 
map <leader>tj :NERDTreeFind<cr> 
map <leader>tf :NERDTreeFocus<cr>

" u - undo
map <leader>uu :UndotreeToggle<cr>
map <leader>uf :UndotreeFocus<cr>

" n - navigate
nnoremap <leader>nf :CtrlSpace o<cr>
nnoremap <leader>nb :CtrlSpace<cr>
nnoremap <leader>nr :LeaderfMru<cr>

" j - jump
map <leader>jc <Plug>(easymotion-bd-f)

" c - comments

" v - vim
nnoremap <leader>ve :vsplit $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>
nnoremap <leader>vq :qa!<cr>

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>


" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  autocmd!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif

augroup END
