"""""""""""""""Key Maps"""""""""""""""
imap jk <Esc>
imap <c-s> <Esc>:w<CR>a
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap {<CR> {}<Left><CR><Esc>O
imap gb <esc>u<C-r>a

nmap JK :q<CR>
nmap <C-a> gg0vG$
nmap <C-s> :w<CR>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap H ^
nnoremap L $
nnoremap U <C-r>
nnoremap <leader>mm :noh<CR>
nmap <A-j> ddp
nmap <A-k> ddkkp
nmap <leader>h :ter<CR><C-w><C-r><C-\><C-n>:resize -3<CR>i
nmap <leader>v :set nowrap<CR>:vert ter<CR><C-w><C-r>
nmap <F3> :set scrollbind<CR>
nmap <S-F3> :set noscrollbind<CR>
nmap gb u<C-r>
nmap <tab> :bnext<CR>
nmap <s-tab> :bprevious<CR>
nmap <leader>fo :browse oldfiles<CR>
nmap <c-[> <c-t>
nnoremap <leader>x :bdelete<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>so :w!<CR>:so %<CR>
nnoremap <leader>mp :e ~/.config/vim/config/keymaps.vim<CR>
nnoremap <leader>g :Git

vmap q <Esc>
vnoremap " hdi"<Esc>pla"<Esc>l
vnoremap ' hdi'<Esc>pla'<Esc>l
vnoremap ( hdi(<Esc>pla)<Esc>l
vnoremap [ hdi[<Esc>pla]<Esc>l
vnoremap { hdi{<Esc>pla}<Esc>l
vnoremap ` hdi`<Esc>pla`<Esc>l
vnoremap < <gv
vnoremap > >gv
vnoremap H ^
vnoremap L $

tnoremap <C-x> <C-\><C-n>
tnoremap <leader>q <C-\><C-n>:q!<CR>:set wrap<CR>
tnoremap <C-h> <C-w>h
tnoremap <C-l> <C-w>l
tnoremap <C-j> <C-w>j
tnoremap <C-k> <C-w>k


" """""""""Key Maps in Plugins"""""""""
" """ syntastic
" nnoremap <silent> <Plug>LocationPrevious    :<C-u>exe 'call <SID>LocationPrevious()'<CR>
" nnoremap <silent> <Plug>LocationNext        :<C-u>exe 'call <SID>LocationNext()'<CR>
" nmap <silent> sp    <Plug>LocationPrevious
" nmap <silent> sn    <Plug>LocationNext
" nnoremap <silent> <Leader>ec :SyntasticToggleMode<CR>
" """ markdown preview
" nnoremap <leader>m :MarkdownPreviewToggle<CR>
" """ nerdtree
" nmap <C-n> :NERDTreeToggle<CR>
" """ codium
" imap <script><silent><nowait><expr> <C-]> codeium#Accept()
" imap <C-J>   <Cmd>call codeium#CycleCompletions(1)<CR>
" imap <C-K>   <Cmd>call codeium#CycleCompletions(-1)<CR>
" imap <C-x>   <Cmd>call codeium#Clear()<CR>
" """ code runner
" nnoremap <C-b> :call CodeRunner()<CR>
" """
" nmap <F4> :IndentLinesToggle<CR>

