set backup             " keep a backup file (restore to previous version)
let &backupdir = &backupdir[2:]
set undofile           " keep an undo file (undo changes after closing)
set ruler              " show the cursor position all the time
set showcmd            " display incomplete commands
set nu rnu
set hlsearch
set hidden
set updatetime=250
filetype plugin indent on

set smartcase
set ignorecase

" Default tab behavior
set expandtab
set shiftwidth=2
set softtabstop=2

let g:python_host_prog = expand('~').'/.pyenv/versions/2.7.14/bin/python'
let g:python3_host_prog = expand('~').'/.pyenv/versions/3.6.2/bin/python'

" init plugins
execute 'source' fnamemodify(expand("<sfile>"), ':h:p').'/plug.vim'
execute 'source' fnamemodify(expand("<sfile>"), ':h:p').'/colorscheme.vim'
execute 'source' fnamemodify(expand("<sfile>"), ':h:p').'/keymap.vim'

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
