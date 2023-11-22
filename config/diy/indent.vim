""""""""""""Indent settings"""""""""""
autocmd BufEnter * exec ":call IndentSettings()"

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

func! Two_Blank_Indent_Style()
  exec "set tabstop=2"
  exec "set shiftwidth=2"
  exec "set softtabstop=2"
endfunc

func! Four_Blank_Indent_Style()
  exec "set tabstop=4"
  exec "set shiftwidth=4"
  exec "set softtabstop=4"
endfunc

func! IndentSettings()
  if &filetype == 'lua'
    exec "call Two_Blank_Indent_Style()"
    exec "IndentLinesToggle"
    exec "IndentLinesToggle"
  elseif &filetype == 'vim'
    exec "call Two_Blank_Indent_Style()"
    exec "IndentLinesToggle"
    exec "IndentLinesToggle"
  elseif &filetype == 'json'
    exec "call Two_Blank_Indent_Style()"
    exec "inoremap [<CR> []<Left><CR><Esc>O"
    exec "IndentLinesToggle"
    exec "IndentLinesToggle"
  elseif &filetype == 'sql'
    exec "call Four_Blank_Indent_Style()"
    exec "inoremap ` ``<Left>"
  elseif &filetype == 'verilog'
    exec "call Four_Blank_Indent_Style()"
    exec "inoremap ' '"
    exec "IndentLinesToggle"
    exec "IndentLinesToggle"
  else
    exec "call Four_Blank_Indent_Style()"
    exec "IndentLinesToggle"
    exec "IndentLinesToggle"
  endif
endfunc


