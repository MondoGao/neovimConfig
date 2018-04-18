if !has('nvim')
	packadd! matchit
endif

" Plugins
call plug#begin('~/.config/nvim/plugged')

" Editor Enhancement
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'nelstrom/vim-visual-star-search'

Plug 'alvan/vim-closetag'
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.tsx"

Plug 'Valloric/MatchTagAlways'
Plug 'editorconfig/editorconfig-vim'

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
Plug 'rizzatti/dash.vim'
Plug 'zerowidth/vim-copy-as-rtf'

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
Plug 'Shougo/denite.nvim'


" Auto Complete & Snippets
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --go-completer --js-completer' }
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_semantic_triggers =  {
      \'c' : ['->', '.'],
      \'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
      \'re!\[.*\]\s'],
      \'ocaml' : ['.', '#'],
      \'cpp,objcpp' : ['->', '.', '::'],
      \'perl' : ['->'],
      \'php' : ['->', '::'],
      \'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
      \'ruby' : ['.', '::'],
      \'lua' : ['.', ':'],
      \'erlang' : [':'],
      \}

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

Plug 'w0rp/ale'
let g:ale_linters = {
      \'cs': ['mcsc'],
      \}
let g:ale_fixers = {
      \'javascript': ['eslint', 'prettier'],
      \'typescript': ['tslint', 'prettier'],
      \'css': ['stylelint'],
      \}
let g:ale_fix_on_save = 1

" UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

Plug 'flazz/vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1

" Language Supports
Plug 'moll/vim-node'
Plug 'styled-components/vim-styled-components'
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_level = 1
let g:vim_markdown_folding_disabled = 1

Plug 'Quramy/tsuquyomi'
let g:tsuquyomi_disable_default_mappings = 1

Plug 'hail2u/vim-css3-syntax'
Plug 'stephenway/postcss.vim'
Plug 'posva/vim-vue'

Plug 'elmcast/elm-vim'
let g:elm_setup_keybindings = 0
Plug 'jparise/vim-graphql'
Plug 'neovimhaskell/haskell-vim'
" Plug 'reasonml-editor/vim-reason'
" Plug 'OrangeT/vim-csharp'
" Plug 'OmniSharp/omnisharp-vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'sheerun/vim-polyglot'
let g:polyglot_disabled = ['css', 'markdown', 'elm', 'graphql']
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0

call plug#end()

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -f -g ""'

  let g:ackprg = 'ag --vimgrep'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
endif
