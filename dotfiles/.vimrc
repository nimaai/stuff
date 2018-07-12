" Part stolen from: https://github.com/skwp/dotfiles

" ######################## Vundle ########################

set nocompatible             " be iMproved, required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-cucumber'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-rails'
Plugin 'duff/vim-bufonly'
" Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-endwise'
Plugin 'ervandew/supertab.git'
Plugin 'Lokaltog/vim-easymotion'
" Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'tmhedberg/matchit'
" Plugin 'mkitt/tabline.vim'
Plugin 'kovisoft/paredit'
" Plugin 'bhurlow/vim-parinfer'
" Plugin 'oakmac/parinfer-viml'
Plugin 'guns/vim-clojure-static'
" Plugin 'tpope/vim-fireplace'
" Plugin 'tpope/vim-classpath'
" Plugin 'tpope/vim-leiningen'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'vim-scripts/buffer-grep'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ngmy/vim-rubocop'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'danchoi/ri.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mtscout6/vim-cjsx'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/dbext.vim'
" Plugin 'tpope/vim-bundler'
" Plugin 'tpope/gem-ctags'
Plugin 'jpalardy/vim-slime'
" Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'rizzatti/dash.vim'
" Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
" Plugin 'moll/vim-bbye'
" Plugin 'kana/vim-textobj-user'
" Plugin 'nelstrom/vim-textobj-rubyblock'
" Plugin 'janko-m/vim-test'
" Plugin 'tpope/vim-dispatch'
Plugin 'jgdavey/tslime.vim'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'elixir-lang/vim-elixir'
Plugin 'JamshedVesuna/vim-markdown-preview'
" Plugin 'brigade/haml-lint'
Plugin 'tpope/vim-rhubarb'
" Plugin 'gcorne/vim-sass-lint'
" MAKES VIM CRASH
" Plugin 'prettier/vim-prettier'
Plugin 'file:///Users/mkmit/src/private/vim-shen'

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

syntax enable
filetype plugin indent on    " required

" disable plugin from autoloading
" let g:nerdtree_tabs_loaded = 0

" " swap files location
" set directory=~/temp/vim-swap-files/
set noswapfile

set ttimeoutlen=50

let mapleader=","


" syntax settings
syntax on
set hidden

" read files automatically when changed outside vim
set autoread

" == Indentation ==
set autoindent
set smartindent
set smarttab
set shiftwidth=2
"set softtabstop=2
"set tabstop=2
set expandtab
set nowrap

set ignorecase
" smart case in/sensitive search
set smartcase

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" == Folds ==

set foldmethod=indent   "fold based on indent
set nofoldenable        "dont fold by default
set foldlevelstart=2
set foldnestmax=7       "deepest fold is 7 levels
set foldlevel=1

" augroup unfold_all
"   autocmd!
"   autocmd BufWinEnter * normal zR
" augroup END

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
set relativenumber " makes vim slow!
set number

" == Line highlight ==
" set cursorline " makes vim slow!

" == Colors ==
" let g:solarized_termcolors=256
colorscheme solarized

" == Mousymouse
set mouse=a
" set ttymouse=xterm2

" fix not working backspace
set backspace=indent,eol,start

set omnifunc=syntaxcomplete#Complete

" remap clearance of text highlighting
" nnoremap dr dd
" nnoremap dd "_dd

" remap clearance of text highlighting
nnoremap <Leader>b :Bufferlist<CR>

" remap clearance of text highlighting
nnoremap <silent> <Leader>/ :nohlsearch<CR>
" short cut for changing current directory to the current file
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

" == NERDTree key mappings ==

nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>
nnoremap <Leader>nc :NERDTreeTabsClose<CR>

" == Easily navigate split windows ==

nnoremap <silent> <C-k><C-k> :wincmd k<CR>
nnoremap <silent> <C-j><C-j> :wincmd j<CR>
nnoremap <silent> <C-h><C-h> :wincmd h<CR>
nnoremap <silent> <C-l><C-l> :wincmd l<CR>

" == Remap relative/absolute line number toggle ==
nnoremap <silent> <Leader>lna :set norelativenumber<CR>
nnoremap <silent> <Leader>lnr :set relativenumber<CR>

" remap movement keys beginning and end of line
noremap <Leader>a ^
noremap <Leader>e $

" remap keys for copying to and pasting from clipboard
noremap <Leader>p "*p
noremap <Leader>P "*P
noremap <Leader>y "*y

" == Fonts, encoding, statusline ==

set guifont=Monaco:h18
set encoding=utf-8
set laststatus=2

"================================ SYNTASTIC ===============================
" Mark syntax errors with :signs
let g:syntastic_enable_signs=1

" Do not automatically jump to the error when saving the file
" Jump feature is annoying to me as it automatically moves the cursor
let g:syntastic_auto_jump=0

" Show the error list automatically
" Allows you to easily navigate the quick fix list
let g:syntastic_auto_loc_list=1

" manual checking
let g:syntastic_mode_map = {
  \ "mode": "passive",
  \ "passive_filetypes": ["ruby"]
  \ }

" This is where the magic happens. Chain together different style checkers
" in order to check for both style flaws and syntax errors.
" Syntax checkers: https://github.com/scrooloose/syntastic/wiki/Syntax-Checkers
let g:syntastic_ruby_checkers=['rubocop', 'mri']
let g:vimrubocop_rubocop_cmd = 'bundle exec rubocop'

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_haml_checkers = ['haml_lint']

nnoremap <Leader>sc :SyntasticCheck<CR>
nnoremap <Leader>sr :SyntasticReset<CR>
"==========================================================================

let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}
let g:slime_dont_ask_default = 1

let g:tslime_always_current_session = 1

noremap + 10<C-W>>
noremap - 10<C-W><
noremap <Leader>+ 10<C-W>+
noremap <Leader>- 10<C-W>-

" use ghc functionality for haskell files
"au Bufenter *.hs compiler ghc

" configure browser for haskell_doc.vim
"let g:haddock_browser = "firefox"

" in order for ctrlp to find all files
let g:ctrlp_max_files = 0
" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs
" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file.
let g:ctrlp_working_path_mode = 'ra'
" ignore files in .git
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|node_modules|vendor|log|public|tmp)$'

" vim does not indent some html tags by default
let g:html_indent_inctags = "html,body,head,tbody"

" add an additional space when commenting
let g:NERDSpaceDelims = 1

" <dp> and <do> from fugitive are not working
noremap <Leader>dp :diffput<CR>
noremap <Leader>dg :diffget<CR>

" dbext profiles
let g:dbext_default_always_prompt_for_variables = 0
let g:dbext_default_profile_pg = 'type=PGSQL:user=mkmit:passwd=mkmit:cmd_terminator=;'
let g:dbext_default_profile = 'pg'
let g:dbext_default_PGSQL_bin = 'psql -c "\pset columns 175"'
let g:dbext_default_buffer_lines = 20
let g:dbext_default_prompt_for_parameters = 0

nnoremap <Leader>fsql :%!sqlformat -r -<CR>
vnoremap <Leader>fsql :!sqlformat -r -<CR>

" disable auto comment lines when pressing 'o' or 'O' in normal mode
augroup auto_comment
  autocmd!
  autocmd FileType * set fo-=o
augroup END

" configure paren matching
highlight MatchParen cterm=none ctermbg=8 ctermfg=red
" highlight MatchParen cterm=bold,underline ctermfg=5* ctermbg=none

" run system command and load results in quickfix window
command! -nargs=+ Run :cexpr system('<args>') | copen

let test#strategy = "dispatch"
let g:test#preserve_screen = 1

let NERDDefaultAlign='left'

nnoremap <silent> <leader>tn :TestNearest<CR>
nnoremap <silent> <leader>tns :TestNearest -strategy=tslime<CR>
nnoremap <silent> <leader>tf :TestFile<CR>
nnoremap <silent> <leader>ts :TestSuite<CR>
nnoremap <silent> <leader>tl :TestLast<CR>
nnoremap <silent> <leader>tls :TestLast -strategy=tslime<CR>
nnoremap <silent> <leader>tv :TestVisit<CR>

" fix syntax highlighting for .md files
augroup md_filetype
  autocmd!
  autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
augroup END

" fix syntax highlighting for .md files
augroup pl_filetype
  autocmd!
  autocmd BufNewFile,BufFilePre,BufRead *.pl set filetype=prolog
augroup END

" augroup shen_filetype
"   autocmd!
"   " autocmd BufNewFile,BufFilePre,BufRead *.shen set filetype=shen
"   autocmd FileType shen call PareditInitBuffer()
" augroup END

" more convenient ad-hoc editing of .vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>sw :setlocal wrap!<cr>

augroup bpry_abbrev
  autocmd!
  autocmd FileType ruby,haml :iabbrev <buffer> bpry binding.pry<right>
  autocmd FileType javascript.jsx,coffee :iabbrev <buffer> bpry debugger<right>
augroup END

nnoremap <silent> <leader>ll :call ColorColumnToggle()<CR>
function! ColorColumnToggle()
  if &colorcolumn
    setlocal colorcolumn=0
  else
    setlocal colorcolumn=83
  endif
endfunction

let g:paredit_smartjump = 1

" automatically open quickfix window after Ggrep
augroup open_quickfix_after_grep
  autocmd QuickFixCmdPost *grep* copen
augroup END

let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_github=1

nnoremap <leader>yl :let @+=expand("%") . ':' . line(".")<CR>

augroup js_filetype
  autocmd!
  autocmd BufNewFile,BufRead *.js set filetype=javascript.jsx
augroup END

let g:prettier#exec_cmd_async = 1
let g:prettier#quickfix_enabled = 1
let g:prettier#autoformat = 0

augroup focus_lost
  autocmd!
  autocmd FocusLost * wall
augroup END

" MAKES VIM CRASH
" augroup prettier
"   autocmd!
"   autocmd BufWritePre *.js,*.jsx,*.json PrettierAsync
" augroup END

" function! DeleteEmptyBuffers()
"   let [i, n; empty] = [1, bufnr('$')]
"   while i <= n
"     if bufexists(i) && bufname(i) == ''
"       call add(empty, i)
"     endif
"     let i += 1
"   endwhile
"   if len(empty) > 0
"     exe 'bdelete' join(empty)
"   endif
" endfunction
