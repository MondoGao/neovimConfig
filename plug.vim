" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'wellle/targets.vim'
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-expand-region'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv'
Plug 'scrooloose/nerdcommenter'
Plug 'kshenoy/vim-signature'

Plug 'kien/ctrlp.vim'
Plug 'vim-ctrlspace/vim-ctrlspace'
" Plug 'Shougo/denite.nvim'

Plug 'ervandew/supertab'

Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'w0rp/ale'

Plug 'flazz/vim-colorschemes'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'reasonml-editor/vim-reason'

call plug#end()

" vim-ariline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
let g:CtrlSpaceUseTabline = 1
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -f -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
endif
 
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0

let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

let g:NERDSpaceDelims = 1
