function! s:set_mode()
  let mac_mode = system("defaults read -g AppleInterfaceStyle 2>/dev/null")
  if mac_mode == "Dark\n"
    set background=dark
  else
    set background=light
  endif
endfunction

autocmd FocusGained * call airline#themes#solarized#refresh() | call s:set_mode()
call s:set_mode()

call plug#begin()
" Plug 'alcesleo/vim-uppercase-sql'
Plug 'airblade/vim-gitgutter'
Plug 'bbakersmith/vim-sexp-mappings-for-regular-people', { 'branch': 'raise-mappings' }
Plug 'chiel92/vim-autoformat'
Plug 'duff/vim-bufonly'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'guns/vim-clojure-static'
" Plug 'guns/vim-clojure-highlight'
Plug 'jrdoane/vim-clojure-highlight'
Plug 'guns/vim-sexp'
Plug 'iCyMind/NeoSolarized'
Plug 'jpalardy/vim-slime'
Plug 'jparise/vim-graphql'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'kana/vim-textobj-user'
Plug 'kchmck/vim-coffee-script'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'kburdett/vim-nuuid'
Plug 'lifepillar/vim-solarized8'
" Plug 'luochen1990/rainbow'
Plug 'nimaai/vim-shadow-cljs'
Plug '~/src/private/vim-shen'
" Plug 'mkitt/tabline.vim'
Plug 'mxw/vim-jsx'
Plug 'noscript/justdo.vim'
Plug 'pangloss/vim-javascript'
" Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'rhysd/vim-textobj-ruby'
Plug 'rizzatti/dash.vim'
Plug 'roxma/vim-tmux-clipboard'
Plug 'scrooloose/nerdtree'
Plug 'snoe/clj-refactor.nvim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-salve'
Plug 'tpope/vim-surround'
Plug 'wlangstroth/vim-racket'
" Plug 'typedclojure/vim-typedclojure'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
" =================================================
" paredit has to be loaded after other lisp plugins
" Plug 'kovisoft/paredit'
" =================================================
call plug#end()

" syntax on
" filetype plugin indent on

set autoindent
set autoread
" set autowriteall
" set background=light
set clipboard=unnamed
set cursorline
set expandtab
set foldmethod=indent
" set guicursor=a:blinkon100
set hidden
set ignorecase
set incsearch
set lispwords+=fn-traced
set mouse=a
set nofoldenable
set noshowcmd
set noshowmode
set nowrap
set number
set relativenumber
set shiftwidth=2
set smartcase
set statusline=%f%m%=%y
set termguicolors

let mapleader = ","
let maplocalleader = ","
nnoremap \ ,

" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" let g:airline_powerline_fonts = 1
let g:clj_refactor_prefix_rewriting = 0
let g:filetype_pl = "prolog"
let g:gitgutter_enabled = 0
let g:paredit_electric_return = 0
let g:ruby_indent_block_style = 'do'
let g:slime_target = 'tmux'
let g:slime_default_config = {"socket_name": "default", "target_pane": ":.2"}
let g:slime_dont_ask_default = 1
" let g:rainbow_active = 1 
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

colorscheme NeoSolarized

" autocmd FocusLost * silent! wall
" autocmd FileType prolog setlocal nocursorline
autocmd BufRead,BufNewFile *.service setfiletype dosini

augroup insert_mode_match_paren
  autocmd InsertEnter * silent! NoMatchParen
  autocmd InsertLeave * silent! DoMatchParen
augroup END

nnoremap <Leader>bf :Buffers<CR>
nnoremap <Leader>bo :BufOnly<CR>
nnoremap <Leader>gf :GFiles --recurse-submodules<CR>
nnoremap <Leader>gs :Gstatus<CR>
" NOTE: conficts with vim-sexp mappings
" nnoremap <Leader>i% gg=G``
" nnoremap <Leader>if [[=%``
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>
nnoremap <Leader>rr :wall<CR>:Require!<CR>
nnoremap <Leader>bd :set background=dark<CR>
nnoremap <Leader>bl :set background=light<CR>
nnoremap <Leader>sw :set wrap!<CR>
nnoremap <C-S> :wall<CR>
" nnoremap <c-w>+ 7<c-w>+
" nnoremap <c-w>- 7<c-w>-
nnoremap + 7<c-w>>
nnoremap - 7<c-w><
nnoremap p p=`]

map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <M-l> <C-l>
map <M-h> <C-h>
map <M-j> <C-j>
map <M-k> <C-k>
map <M-u> <C-u>
map <M-o> <C-o>
map <M-i> <C-i>

map * g*

vnoremap <Leader>db :DB<CR>

let g:sexp_mappings = {
  \ 'sexp_swap_list_backward':        '',
  \ 'sexp_swap_list_forward':         '',
  \ 'sexp_swap_element_backward':     '',
  \ 'sexp_swap_element_forward':      '',
  \ }
let g:sexp_filetypes = 'clojure,scheme,lisp,timl,shen'

" for files without syntax rules
syntax keyword myTodo NOTE: REFACTOR:
" for files with syntax rules
autocmd Syntax * syntax keyword myTodo NOTE: REFACTOR: containedin=ALL
highlight default link myTodo Todo

" command! Zprint 1,$d | %! zprintm "$(cat .zprintrc)" < %

command! Reset execute 'Eval (app/reset)' | BufDo edit

nnoremap <Leader>rs :Reset<CR>

" autocmd VimEnter * RainbowToggle

" Evaluate Clojure buffers on load
autocmd BufRead *.clj try | silent! Require | catch /^Fireplace/ | endtry

function! InitDB()
  let s:db_path = 'tmp/db.txt'
  if filereadable(s:db_path)
    execute readfile(s:db_path)[0]
  endif
endfunction

command! InitDB call InitDB()

" search for non-ascii characters
" /[^\x00-\x7F]
