set backup             " keep a backup file (restore to previous version)
set undofile           " keep an undo file (undo changes after closing)
set ruler              " show the cursor position all the time
set showcmd            " display incomplete commands
set nu rnu
set hlsearch
set hidden
syntax on
filetype plugin indent on
" Appearance
set termguicolors
colo molokai
map <Space> <leader>

execute 'source' fnamemodify(expand("<sfile>"), ':h:p').'/plug.vim'

" a - Application
" an - NERDTree
nnoremap <leader>ann :NERDTree
nnoremap <leader>ant :NERDTreeToggle<cr> 
nnoremap <leader>ano :NERDTreeFocus<cr> 
nnoremap <leader>anm :NERDTreeMirrow<cr> 
nnoremap <leader>anc :NERDTreeClose<cr> 
nnoremap <leader>anf :NERDTreeFind<cr> 
nnoremap <leader>anr :NERDTreeCWD<cr> 
" au - Undotree
nnoremap <leader>aut :UndotreeToggle<cr>
nnoremap <leader>auo :UndotreeShow<cr>
nnoremap <leader>auc :UndotreeHide<cr>
nnoremap <leader>auf :UndotreeFocus<cr>

" t - Toggle
nnoremap <leader>tt :NERDTreeToggle<cr>
nnoremap <leader>tu :UndotreeToggle<cr>

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

nnoremap <leader>ve :vsplit $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>

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
