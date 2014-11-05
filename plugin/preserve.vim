" Kill trailing whitespace
nnoremap <silent> <expr> <plug>(preserve-kill-trailing-whitespace) ":\<c-u>call pr#preserve("%s/\\s\\+$//e")\<cr>"

" Reindent entire file
nnoremap <silent> <expr> <plug>(preserve-reindent-file) ":\<c-u>call pr#preserve("normal! gg=G")\<cr>"
