let g:is_chicken=1

setl complete+=,k~/stuff/chicken/scheme-word-list

setl lispwords+=let-values,condition-case,with-input-from-string
setl lispwords+=with-output-to-string,handle-exceptions,call/cc,rec,receive
setl lispwords+=call-with-output-file

nmap <silent> == :call Scheme_indent_top_sexp()<cr>

" Indent a toplevel sexp.
fun! Scheme_indent_top_sexp()
        let pos = getpos('.')
        silent! exec "normal! 99[(=%"
        call setpos('.', pos)
endfun

nmap <silent> <leader>es :call Scheme_eval_defun()<cr>
nmap <silent> <leader>ef  :call Scheme_send_sexp("(load \"" . expand("%:p") . "\")\n")<cr>

fun! Scheme_send_sexp(sexp)
        let ss = escape(a:sexp, '\"')
        call system("screen -p csi -X stuff \"" . ss . "\n\"")
        "(or for tmux users)
        "call system("tmux send-keys -t csi \"" . ss . "\n\"")
endfun

fun! Scheme_eval_defun()
        let pos = getpos('.')
        silent! exec "normal! 99[(yab"
        call Scheme_send_sexp(@")
        call setpos('.', pos)
endfun
