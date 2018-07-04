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

if has('mac')
  " Vim cursor for iterm2
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  
  let g:python_host_prog = expand('~').'/.pyenv/versions/2.7.14/bin/python'
  let g:python3_host_prog = expand('~').'/.pyenv/versions/3.6.5/bin/python'
endif

if has('win32')
  let g:python3_host_prog = expand('~').'AppData\Local\Programs\Python\Python37-32\python.exe'
endif

let g:configFolder = fnamemodify(expand("<sfile>"), ':h:p')

" init plugins
execute 'source' g:configFolder.'/plug.vim'
execute 'source' g:configFolder.'/colorscheme.vim'
execute 'source' g:configFolder.'/keymap.vim'
execute 'source' g:configFolder.'/mode.vim'

function s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

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
