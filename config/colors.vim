""""""""""""""""Colors""""""""""""""""
""" Colorscheme 
" colorscheme ayu
colorscheme sonokai


"""Normal
hi Normal guibg=NONE ctermbg=NONE                                       " set transperant background 
hi CursorLineNr guifg=#aaff32 guibg=NONE gui=NONE cterm=NONE            " relative number 
hi Comment guifg=#aaff32 guibg=NONE gui=NONE cterm=NONE                 " comment 
hi LineNr guifg=#ffffff guibg=NONE gui=NONE cterm=NONE                  " number 
hi Visual guifg=#000000 guibg=#ffffff gui=NONE cterm=NONE               " virtual mode 
hi MatchParen guifg=#232a2d guibg=#e5c76b gui=bold cterm=NONE           " brackets matching 
hi DiffDelete guifg=#4acbfb guibg=NONE gui=NONE cterm=NONE              " better comment signal : ' "" '
hi CursorLine guifg=NONE guibg=NONE gui=NONE cterm=underline            " cursor line 
hi Search guifg=#000000 guibg=#4acbfb gui=NONE cterm=NONE               " search color 
hi Conceal guifg=#6fff7e guibg=NONE gui=bold cterm=bold                 " set indent line bg = NONE
hi StatusLine guifg=#ffffff guibg=NONE gui=NONE cterm=NONE              " statusline 
hi StatusLineNC guifg=NONE guibg=NONE gui=NONE cterm=NONE               " statuslinenc
hi VertSplit guifg=#ffffff guibg=NONE gui=NONE cterm=NONE               " vertsplit 

"  #6cbfbf #4acbfb #4acbbb #0cffff

"""Lsp
au BufNewFile,BufRead *.v,*.sv set filetype=verilog                     " over load verilog

hi Structure guifg=#7eff33 guibg=NONE gui=NONE cterm=italic             " structure
hi Function guifg=#6fffff guibg=NONE gui=NONE cterm=italic              " function
hi cFunctions guifg=#6fffff guibg=NONE gui=NONE cterm=italic            " cfunction
hi cppSTLnamespace guifg=#6fff8f guibg=NONE gui=NONE cterm=italic       " namespace
hi Type guifg=#4acbfb guibg=NONE gui=NONE cterm=NONE                    " type
hi Keyword guifg=#ff6677 guibg=NONE gui=NONE cterm=italic               " keyword
hi cIncluded guifg=#ffff33 guibg=NONE gui=NONE cterm=italic             " cinclude
highlight! link cppStructure Structure
highlight! link Exception Keyword
highlight! link Conditional Keyword
highlight! link Repeat Keyword
highlight! link Include Keyword
highlight! link Define Keyword
highlight! link Return Keyword


" hi Macro guifg=#f5c272 guibg=NONE gui=NONE cterm=bold                   " macro

"""Better Comment
"! ll 
hi ErrorBetterComments guifg=#ff6677 guibg=NONE gui=NONE cterm=bold
" +++++
hi HighlightBetterComments guifg=#aaff32 guibg=NONE gui=NONE cterm=NONE
" ?????
hi QuestionBetterComments guifg=#ffaa33 guibg=NONE gui=NONE cterm=NONE
"" """"
hi StrikeoutBetterComments guifg=#33ffaa guibg=NONE gui=NONE cterm=NONE
" TODO: .....
hi TodoBetterComments guifg=#ffff33 guibg=NONE gui=NONE cterm=underline

"""Statusline
set laststatus=2
set statusline=%1*\%%\ %<%.50F
set statusline+=%=%2*\%y%m%r%h%w%*
set statusline+=%3*\ [%{&fenc}]%*
set statusline+=%4*\ [Row:\ %l\ of\ %L,\ Col:\ %c\]%*
hi User1  guifg=#aaff32 guibg=NONE
hi User2  guifg=#aaff32 guibg=NONE
hi User3  guifg=#ff6677 guibg=NONE
hi User4  guifg=#ffff33 guibg=NONE

