"""""""""""""Quick Comment""""""""""""
vmap <leader>j :call QuickComment()<CR>
vmap <leader>k :call QuickCommentOff()<CR>
nmap <leader>j v:call QuickComment()<CR>gv<Esc>lll
nmap <leader>k v:call QuickCommentOff()<CR>gv<Esc>hhh
vmap <leader>/ :call ToggleComment()<CR>
nmap <leader>/ :call ToggleComment()<CR>

func! QuickComment()
  if &filetype == 'python'
    exec "s/^/# "
  elseif &filetype == 'sh'
    exec "s/^/# "
  elseif &filetype == 'lua'
    exec "s/^/-- "
  elseif &filetype == 'mysql'
    exe "s/^/-- "
  elseif &filetype == 'vim'
    exec "s/^/\" "
  elseif &filetype == 'markdown'
    exec "s/^/<--! "
    exec "s/$/ -->"
  elseif &filetype == 'sh'
    exec "s/^/# "
  else 
    exec "s/^/\\/\\/ "
  endif
endfunc

func! QuickCommentOff()
  if &filetype == 'python'
    exec "s/# /"
  elseif &filetype == 'sh'
    exec "s/# /"
  elseif &filetype == 'lua'
    exec "s/-- /"
  elseif &filetype == 'mysql'
    exe "s/-- /"
  elseif &filetype == 'vim'
    exec "s/\" /"
  elseif &filetype == 'markdown'
    exec "s/<--! /"
    exec "s/ -->/"
  elseif &filetype == 'sh'
    exec "s/# /"
  else 
    exec "s/\\/\\/ /"
  endif
endfunc

fun! ToggleComment()
  let ch = '" '
  if &filetype == 'python'
    let ch = '# '
  elseif &filetype == 'sh'
    let ch = '# '
  elseif &filetype == 'zsh'
    let ch = '# '
  elseif &filetype == 'lua'
    let ch = '-- '
  elseif &filetype == 'mysql'
    let ch = '-- '
  elseif &filetype == 'vim'
    let ch = '" '
  else 
    let ch = '// '
  endif
  
  let ln = getline('.')
  let scnt = indent(line('.'))
  
  if ln[scnt:scnt + len(ch) - 1] == ch
    if scnt == 0
      call setline('.', ln[len(ch):])
    else
      call setline('.', ln[:scnt - 1].ln[scnt + len(ch):])
    endif
  else
    if scnt == 0
      call setline('.', ch.ln[scnt:])
    else
      call setline('.', ln[:scnt - 1].ch.ln[scnt:])
    endif
  endif
endfunc


