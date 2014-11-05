function! pr#preserve(command)
  " Preparation: save last search, and cursor position.
  let l:win_view = winsaveview()
  let l:last_search = getreg('/')

  " execute the command without adding to the changelist/jumplist:
  execute 'keepjumps ' . a:command

  " Clean up: restore previous search history, and cursor position
  call winrestview(l:win_view)
  call setreg('/', l:last_search)
endfunction

