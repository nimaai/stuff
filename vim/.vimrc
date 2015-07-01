" Part stolen from: https://github.com/skwp/dotfiles

" ######################## Vundle ########################

set nocompatible             " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-cucumber'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-rails'
Plugin 'duff/vim-bufonly'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-endwise'
Plugin 'ervandew/supertab.git'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'sandeepcr529/Buffet.vim'
Plugin 'edsono/vim-matchit'
Plugin 'jpalardy/vim-slime'
Plugin 'mkitt/tabline.vim'
Plugin 'vim-scripts/paredit.vim'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-leiningen'
"Plugin 'lukerandall/haskellmode-vim'
"Plugin 'kana/vim-filetype-haskell'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'bling/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-scripts/buffer-grep'
Plugin '907th/vim-auto-save'
"Plugin 'lucapette/vim-ruby-doc'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ngmy/vim-rubocop'
Plugin 'scrooloose/syntastic'
Plugin 'danchoi/ri.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required

"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ########################################################
"

filetype plugin indent on    " required

" remap leader character
let mapleader=","

" disable plugin from autoloading
let g:nerdtree_tabs_loaded = 1

" fix strange arrow issues in cygwin on windows
if has("win32unix")
  let g:NERDTreeDirArrows=0
endif

cd ~/

set ttimeoutlen=50

" syntax settings
syntax on
set hidden

" swap files location
set directory=~/temp/vim-swap-files/

" == Indentation ==
set autoindent
set smartindent
set smarttab
set shiftwidth=2
"set softtabstop=2
"set tabstop=2
set expandtab

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" == Folds ==

set foldmethod=indent   "fold based on indent
set foldnestmax=7       "deepest fold is 7 levels
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

" == Line highlight == 
set cursorline

" == Colors ==
let g:solarized_termcolors=256
colorscheme solarized

" == Mousymouse
set mouse=a
set ttymouse=xterm2

" remap clearance of text highlighting
nnoremap <Leader>b :Bufferlist<CR>

" remap clearance of text highlighting
nnoremap <silent> <Leader>/ :nohlsearch<CR>
" short cut for changing current directory to the current file
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

" == Key map for quick resizing of window ==

" == NERDTree key mappings ==

nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>
nnoremap <Leader>nc :NERDTreeTabsClose<CR>

" == Easily navigate split windows ==

nmap <silent> <C-K> :wincmd k<CR>
nmap <silent> <C-J> :wincmd j<CR>
nmap <silent> <C-H> :wincmd h<CR>
nmap <silent> <C-L> :wincmd l<CR>

" == Easily jump between buffers
" nmap <silent> <C-J> :bprevious<CR>
" nmap <silent> <C-K> :bnext<CR>

" remap movement keys beginning and end of line
map <Leader>a ^
map <Leader>e $

" remap keys for copying to and pasting from clipboard
map <Leader>p "+p
map <Leader>P "+P
map <Leader>y "+y

" == Fonts, encoding, statusline ==

set guifont=Monospace\ 13
set encoding=utf-8
set laststatus=2

" auto-clean fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

" Markdown extension
au BufNewFile,BufRead *.md set ft=md

" ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

let g:syntastic_ruby_checkers = ["mri","rubocop"]
let g:syntastic_mode_map = { "mode": "passive" }
let g:syntastic_always_populate_loc_list = 1
nnoremap <Leader>sc :SyntasticCheck<CR>
nnoremap <Leader>sr :SyntasticReset<CR>

nnoremap <Leader>gg :GitGutterToggle<CR>

" abbreviations
ia pry binding.pry

let g:slime_target = "tmux"

nnoremap <silent> <Leader>> :exe "vertical resize " . (winwidth(0) * 4/3)<CR>
nnoremap <silent> <Leader>< :exe "vertical resize " . (winwidth(0) * 3/4)<CR>
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 4/3)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 3/4)<CR>

" use ghc functionality for haskell files
"au Bufenter *.hs compiler ghc

" configure browser for haskell_doc.vim
"let g:haddock_browser = "firefox"

let g:Powerline_symbols = 'fancy'

" in order for ctrlp to find all files
let g:ctrlp_max_files = 0
" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs
" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file.
let g:ctrlp_working_path_mode = 'ra'
" ignore files in .git
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0
let g:auto_save = 1

" vim does not indent some html tags by default
let g:html_indent_inctags = "html,body,head,tbody"

" add an additional space when commenting
let g:NERDSpaceDelims = 1

" split art for Gdiff
let diffopt='vertical'

let g:gitgutter_enabled = 0
