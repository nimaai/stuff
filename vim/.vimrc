" Parts stolen from: https://github.com/skwp/dotfiles

" disable plugin from autoloading
let g:nerdtree_tabs_loaded = 1

cd ~/

set nocompatible

call pathogen#infect()
call pathogen#helptags()

syntax on
set hidden
filetype plugin indent on

" == Indentation ==
set autoindent
set smartindent
set smarttab
"set shiftwidth=2
"set softtabstop=2
"set tabstop=2
set expandtab

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" == Extra matchers for % ==
runtime macros/matchit.vim

" == Folds ==

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" == Scrolling

set scrolloff=4         "Start scrolling when we're 4 lines away from margins:nnoremap <Space> i<Space><Esc>

" Disable scrollbars
set guioptions=aem

" Disable alt key mappings for menu in gvim
set winaltkeys=no

" == Backup files
set nobackup
set nowb

" == Search settings ==
set incsearch
set hlsearch

" == Line numbering ==
set number

" == Colors ==
colorscheme xoria256

" == Mousymouse
set mouse=a
set ttymouse=xterm2

" open buffergator window on the right side
let g:buffergator_viewport_split_policy="R"

" remap clearance of text highlighting
nnoremap <silent> <Leader>/ :nohlsearch<CR>
" insert space in normal mode
nnoremap <Space> a<Space><Esc>

" == Open NERDTree on entering? ==
"autocmd vimenter * NERDTree

" == NERDTree key mappings ==

noremap <A-t> :NERDTreeToggle<CR>
noremap <A-f> :NERDTreeFind<CR>
noremap <A-n> :NERDTreeFocus<CR>

" == Easily navigate split windows ==

nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>

" == Easily jump between buffers
nmap <silent> <C-J> :bprevious<CR>
nmap <silent> <C-K> :bnext<CR>

" == Quick command mappings in insert mode ==

inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O

inoremap CC <Esc>C
inoremap SS <Esc>S
inoremap DD <Esc>dd
inoremap UU <Esc>u

" == Key map for adding blank lines in normal mode ==

map <Enter> o<ESC>
map <S-Enter> O<ESC>

" == Key map for quick resizing of window ==

if bufwinnr(1)
  map <kPlus> 10<C-W>+
  map <kMinus> 10<C-W>-
  map <kDivide> 10<c-w><
  map <kMultiply> 10<c-w>>
endif

" remap movement keys beginning and end of line
nnoremap $ ^
nnoremap ^ $
vnoremap $ ^
vnoremap ^ $

" == Fonts, encoding, Powerline ==

set guifont=Monospace\ 11
set encoding=utf-8
let g:Powerline_symbols = 'unicode'
set laststatus=2

" Markdown extension
au BufNewFile,BufRead *.md set ft=md

" ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
