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

" == Font ==
set guifont=Monospace\ 11
