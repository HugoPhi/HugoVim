""" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"" general settings 
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='!'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_open = 0
let g:syntastic_auto_jump = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_highlighting=0

"" c/cpp check options 
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
" let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++ -w '  "" close all warning, you can change to -Wno-Foo
let g:syntastic_cpp_checkers = ['gcc']

"" python check options 
let g:syntastic_python_checkers = ['flake8']  " please install flake8 before you use. run this code  >> pip install flake8 
let g:syntastic_python_flake8_args = '--ignore=E501,E226,E114,E116,E731'

"" find previous/next error 
function! <SID>LocationPrevious()
  try
    lprev
  catch /^Vim\%((\a\+)\)\=:E553/
    llast
  endtry
endfunction
function! <SID>LocationNext()
  try
    lnext
  catch /^Vim\%((\a\+)\)\=:E553/
    lfirst
  endtry
endfunction

nnoremap <silent> <Plug>LocationPrevious    :<C-u>exe 'call <SID>LocationPrevious()'<CR>
nnoremap <silent> <Plug>LocationNext        :<C-u>exe 'call <SID>LocationNext()'<CR>
nmap <silent> <c-[>    <Plug>LocationPrevious
nmap <silent> <c-]>    <Plug>LocationNext

nnoremap <silent> <Leader>ec :SyntasticToggleMode<CR>
function! ToggleErrors()
  let old_last_winnr = winnr('$')
  lclose
  if old_last_winnr == winnr('$')
    Errors
  endif
endfunction

"" check when only click 'leader + ck'
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <leader>ck :SyntasticCheck<CR>
""""""""""""""""""""""""""""""""""""""


