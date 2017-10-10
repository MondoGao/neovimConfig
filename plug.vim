" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree'
Plug 'wellle/targets.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/denite.nvim'
Plug 'weynhamz/vim-plugin-minibufexpl'
Plug 'vim-syntastic/syntastic'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'kshenoy/vim-signature'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

call plug#end()

" vim-ariline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" minibufexpl
map <Leader>mbe :MBEOpen<cr>
map <Leader>mbc :MBEClose<cr>
map <Leader>mbt :MBEToggle<cr>
