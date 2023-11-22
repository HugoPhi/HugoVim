""" NerdTree
nmap <C-n> :NERDTreeToggle<CR>
let g:WebDevIconsUnicodeDecorateFolderNodes = 0
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = '' 
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=27
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

