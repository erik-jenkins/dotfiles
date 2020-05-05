""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" main settings block
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" automatically change directory
" set autochdir

" searching
set incsearch
set hlsearch
set ignorecase
set smartcase

" indentation
set tabstop=2
set shiftwidth=2
set expandtab

" line numbers
set nu

" colors
hi EndOfBuffer ctermbg=black ctermfg=black
hi VertSplit ctermfg=Black
set fillchars+=vert:\ 

" allow project-specific vim config
set exrc

" menu settings
set wildmenu
set wildmode=longest:list,full

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin("~/.config/nvim/plugged")

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }  " go language support
Plug 'jiangmiao/auto-pairs'                         " automatically close brackets
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " install fzf
Plug 'junegunn/fzf.vim'                             " fuzzy file finder
Plug 'mattn/emmet-vim'                              " zen html
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " completion framework
Plug 'preservim/nerdtree'                           " file tree sidebar
Plug 'skywind3000/asyncrun.vim'                     " run commands asynchronously
Plug 'tyru/open-browser.vim'                        " open the browser from vim
Plug 'vim-airline/vim-airline'                      " status bar
Plug 'vim-airline/vim-airline-themes'               " themes for airline status bar
Plug 'vimwiki/vimwiki'                              " personal wiki

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline
let g:airline_theme='wombat'

" coc
source ~/.config/nvim/coc.vim

" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
 
"" vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

" vimwiki
let g:vimwiki_list = [{'path': '~/.dotfiles/wiki'}]

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

" nerdtree
nnoremap <leader>nt :NERDTreeToggle<CR>

" fzf
nnoremap <C-P> :Files<CR>

" terminal mode
tnoremap jk <C-\><C-N>

" emmet
let g:user_emmet_leader_key='<C-E>'

" make project-specific vimrc files more secure
set secure
