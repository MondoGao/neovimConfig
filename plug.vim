" Plugins
call plug#begin('~/.config/nvim/plugged')

" Editor Enhancement
Plug 'wellle/targets.vim'
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-ragtag'

Plug 'alvan/vim-closetag'
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.js"

Plug 'Valloric/MatchTagAlways'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-function'
Plug 'jasonlong/vim-textobj-css'
Plug 'whatyouhide/vim-textobj-xmlattr'
Plug 'sgur/vim-textobj-parameter'
Plug 'jceb/vim-textobj-uri'
Plug 'Julian/vim-textobj-variable-segment'

" Applications
Plug 'scrooloose/nerdtree'
let g:NERDSpaceDelims = 1

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv'
Plug 'scrooloose/nerdcommenter'
Plug 'kshenoy/vim-signature'

" Workspace & File Management
Plug 'kien/ctrlp.vim'
Plug 'vim-ctrlspace/vim-ctrlspace'
let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
let g:CtrlSpaceUseTabline = 1
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1

Plug 'mileszs/ack.vim'

" Plug 'ervandew/supertab'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}


" Auto Complete & Snippets
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

Plug 'w0rp/ale'
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'css': ['stylelint'],
\}

" UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

Plug 'flazz/vim-colorschemes'
Plug 'ryanoasis/vim-devicons'

" Language Supports
Plug 'sheerun/vim-polyglot'
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0

Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_level = 1

Plug 'Quramy/tsuquyomi'

Plug 'hail2u/vim-css3-syntax'
Plug 'jparise/vim-graphql'
Plug 'reasonml-editor/vim-reason'

call plug#end()

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -f -g ""'

  let g:ackprg = 'ag --vimgrep'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
endif
