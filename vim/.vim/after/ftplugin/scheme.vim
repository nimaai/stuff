let g:is_chicken=1

setl complete+=,k~/stuff/chicken/scheme-word-list

setl lispwords+=let-values,condition-case,with-input-from-string
setl lispwords+=with-output-to-string,handle-exceptions,call/cc,rec,receive
setl lispwords+=call-with-output-file