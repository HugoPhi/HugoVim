""""""""""""""CodeRunner""""""""""""""
nnoremap <C-b> :call CodeRunner()<CR>

func! CodeRunner()
  if &filetype == "verilog"
    if filereadable("./a.out")
      exec "! rm ./a.out"
    endif
    if filereadable("./test.vcd")
      exec "! rm ./test.vcd"
    endif
    exec "!iverilog %"
    if filereadable("./a.out")
      exec "!vvp ./a.out"
      if filereadable("./test.vcd")
        exec "!gtkwave ./test.vcd"
      endif 
      exec "ter vvp ./a.out"
    else
      exec "ter iverilog %"
    endif
    exec "IndentLinesDisable"
    exec "wincmd r"
    exec "resize -3"
  elseif &filetype == "c"
    if filereadable("./a.out")
      exec "! rm ./a.out"
    endif
    exec "!clang %"
    if filereadable("./a.out")
      exec "ter ./a.out"
    else 
      exec "ter clang %"
    endif
    exec "IndentLinesDisable"
    exec "wincmd r"
    exec "resize -3"
  elseif &filetype == "cpp"
    if filereadable("./a.out")
      exec "! rm ./a.out"
    endif
    exec "!clang++ %"
    if filereadable("./a.out")
      exec "ter ./a.out"
    else 
      exec "ter clang++ %"
    endif
    exec "IndentLinesDisable"
    exec "wincmd r"
    exec "resize -3"
  elseif &filetype == "python"
    exec "ter python3 %"
    exec "IndentLinesDisable"
    exec "wincmd r"
    exec "resize -3"
  elseif &filetype == "rust"
    exec "ter cargo run"
    exec "IndentLinesDisable"
    exec "wincmd r"
    exec "resize -3"
  elseif &filetype == "sh"
    exec "ter bash %"
    exec "IndentLinesDisable"
    exec "wincmd r"
    exec "resize -3"
  elseif &filetype == "java"
    exec "ter java %"
    exec "IndentLinesDisable"
    exec "wincmd r"
    exec "resize -3"
  elseif &filetype == "sql"
    exec "ter mysql %"
    exec "IndentLinesDisable"
    exec "wincmd r"
    exec "resize -3"
  else
    exec "echo 'filetype not support!!!"
  endif 
endfunc


