" Parts stolen from: https://github.com/skwp/dotfiles

set t_Co=256

" show tab numbers in tab labels
set guitablabel=\(%N\)\ %t\ %M

" set tab name to show only the filename
"function! GuiTabLabel()
  "return fnamemodify(bufname(winbufnr(1)), ":t")
"endfunction

"set guitablabel=%!GuiTabLabel()

" disable plugin from autoloading
let g:nerdtree_tabs_loaded = 1
" easygrep options
let g:EasyGrepSearchCurrentBufferDir=0
let g:EasyGrepRecursive=1

cd ~/

set nocompatible

call pathogen#infect()
call pathogen#helptags()

" fix the alt keys issue in terminal mode
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set ttimeoutlen=50

" syntax settings
syntax on
set hidden
filetype plugin indent on

" swap files location
set directory=~/temp/vim-swap-files/

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
set guioptions=iaem

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

" extension to numberlines plugin to fix the toggle when switching windows
"autocmd WinLeave * :call FocusLost()
"autocmd WinEnter * :call FocusGained()

" disabling arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" == Colors ==
colorscheme xoria256

" == Mousymouse
set mouse=a
set ttymouse=xterm2

" remap clearance of text highlighting
nnoremap <Leader>b :Bufferlist<CR>

" remap clearance of text highlighting
nnoremap <silent> <Leader>/ :nohlsearch<CR>
" short cut for changing current directory to the current file
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

" == Open NERDTree on entering? ==
"autocmd vimenter * NERDTree

" == Key map for quick resizing of window ==

" resize horzontal split window
nmap <C-Up> 10<C-W>-<C-W>-
nmap <C-Down> 10<C-W>+<C-W>+
" resize vertical split window
nmap <C-Left> 10<C-W>><C-W>>
nmap <C-Right> 10<C-W><<C-W><

" == NERDTree key mappings ==

noremap <A-t> :NERDTreeToggle<CR>
noremap <A-f> :NERDTreeFind<CR>
noremap <A-n> :NERDTreeFocus<CR>
nnoremap <Leader>nc :tabdo :NERDTreeClose<CR>

" == Easily navigate split windows ==

nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>

" == Easily jump between buffers
nmap <silent> <C-J> :bprevious<CR>
nmap <silent> <C-K> :bnext<CR>

" remap movement keys beginning and end of line
map <Leader>a ^
map <Leader>e $

" remap keys for copying to and pasting from clipboard
map <Leader>p "+p
map <Leader>P "+P
map <Leader>y "+y

" == Fonts, encoding, Powerline ==

if has('gui_running')

  " make gvim shell use another .bashrc file
  set shell=bash\ --init-file\ .bashrc_gvim\ --noediting

  colorscheme solarized
  set background=dark

  let g:Powerline_theme="short"
  let g:Powerline_colorscheme="solarized256_dark"
  let g:Powerline_symbols = 'unicode'
endif

set guifont=Droid\ Sans\ Mono\ 13
set encoding=utf-8
set laststatus=2

" Markdown extension
au BufNewFile,BufRead *.md set ft=md

" ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" abbreviations
ab bp binding.pry

" Simple way to turn off Gdiff splitscreen
" works only when diff buffer is focused
if !exists(":Gdiffoff")
  command Gdoff diffoff | q | Gedit
endif

let g:slime_target = "tmux"
