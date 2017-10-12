" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-repeat'

Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree'
Plug 'wellle/targets.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/denite.nvim'
Plug 'vim-syntastic/syntastic'
Plug 'kshenoy/vim-signature'

Plug 'SirVer/ultisnips'

call plug#end()

" vim-ariline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
let g:CtrlSpaceUseTabline = 1

let g:Lf_CommandMap = {'<C-C>': ['<Esc>', '<C-C>']}
let g:Lf_StlSeparator = { 'left': '', 'right': '' }

nmap <c-space> <nul> 
