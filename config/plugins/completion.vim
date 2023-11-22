""" Completion :
let g:apc_enable = 1
let g:apc_enable_ft = {"*":1}
set cpt=.,k,w,b
set completeopt=menu,menuone,noselect
set shortmess+=c

""" codium
let g:codeium_disable_bindings = 1
imap <script><silent><nowait><expr> <C-]> codeium#Accept()
imap <C-J>   <Cmd>call codeium#CycleCompletions(1)<CR>
imap <C-K>   <Cmd>call codeium#CycleCompletions(-1)<CR>
imap <C-x>   <Cmd>call codeium#Clear()<CR>

