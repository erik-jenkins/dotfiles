""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" main settings block
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" automatically change directory
set autochdir

" searching
set incsearch
set hlsearch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin("~/.config/nvim/plugged")

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " go language support
Plug 'neoclide/coc.nvim', {'branch': 'release'}    " completion framework
Plug 'vim-airline/vim-airline'                     " status bar
Plug 'vim-airline/vim-airline-themes'              " themes for airline status bar
Plug 'vimwiki/vimwiki'                             " personal wiki

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimwiki
let g:vimwiki_list = [{'path': '~/.dotfiles/wiki'}]

" coc
source ~/.config/nvim/coc.vim

" airline
let g:airline_theme='ayu_mirage'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" keybindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "
inoremap jk <Esc>

" splits
nnoremap <leader>\ :vsplit<CR>
nnoremap <leader>- :split<CR>

nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l

" tabs
nnoremap <leader>te :tabedit<CR>
nnoremap <C-H> :tabprev<CR>
nnoremap <C-L> :tabnext<CR>

" config
nnoremap <leader>cs :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>ces :split ~/.config/nvim/init.vim<CR>
nnoremap <leader>cev :vsplit ~/.config/nvim/init.vim<CR>

" plugins
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pc :PlugClean<CR>

" searching
nnoremap <leader><leader> :noh<CR>
