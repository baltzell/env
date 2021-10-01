" Vim color file
" Maintainer:  Dominique Pelle <dominique.pelle at gmail.com>
" Last change: 25 Mar 2008
" URL:         http://dominique.pelle.free.fr/rastafari.vim
" Screenshot:  http://dominique.pelle.free.fr/rastafari.vim.png

set background=dark
hi clear
if exists("syntax on")
    syntax reset
endif

let g:color_name="rastafari"

hi Normal      guifg=grey90  guibg=#000000 gui=none ctermfg=gray
hi Ignore      guifg=#888888 guibg=bg      gui=bold ctermfg=darkgrey cterm=bold
hi Comment     guifg=#00aa00 guibg=bg      gui=none ctermfg=darkgreen
hi LineNr      guifg=#ffff00 guibg=bg      gui=none ctermfg=yellow
hi Include     guifg=grey60  guibg=bg      gui=bold ctermfg=darkgrey cterm=bold
hi Define      guifg=grey60  guibg=bg      gui=bold ctermfg=darkgrey cterm=bold
hi Macro       guifg=grey60  guibg=bg      gui=bold ctermfg=darkgrey cterm=bold
hi PreProc     guifg=grey60  guibg=bg      gui=bold ctermfg=darkgrey cterm=bold
hi PreCondit   guifg=grey60  guibg=bg      gui=bold ctermfg=darkgrey cterm=bold
hi NonText     guifg=#ffff00 guibg=bg      gui=none ctermfg=yellow
hi Directory   guifg=#ffff00 guibg=bg      gui=none ctermfg=yellow
hi SpecialKey  guifg=#ffff00 guibg=bg      gui=none ctermfg=yellow
hi Type        guifg=#accddc guibg=bg      gui=none ctermfg=white
hi String      guifg=#bb0000 guibg=bg      gui=none ctermfg=darkred
hi Constant    guifg=#bb0000 guibg=bg      gui=none ctermfg=darkred
hi Special     guifg=#ff8800 guibg=bg      gui=none ctermfg=darkyellow
hi Number      guifg=#cc0000 guibg=bg      gui=none ctermfg=darkred
hi Identifier  guifg=#ffffff guibg=bg      gui=none ctermfg=white
hi Conditional guifg=darkyellow guibg=bg      gui=none ctermfg=white
hi Repeat      guifg=darkyellow guibg=bg      gui=none ctermfg=white
hi Statement   guifg=darkyellow guibg=bg      gui=none ctermfg=white
hi CursorLine  guibg=grey25
hi Label       guifg=darkyellow      guibg=bg      gui=none ctermfg=gray
hi Operator    guifg=#ffffff guibg=bg      gui=none ctermfg=white
hi Function    guifg=#ffffff guibg=bg      gui=none ctermfg=white
hi MatchParen  guifg=#ffffff guibg=#0000aa gui=none ctermfg=grey       ctermbg=blue
hi ErrorMsg    guifg=#ffff00 guibg=#ff0000 gui=none ctermfg=yellow     ctermbg=red
hi WildMenu    guifg=#888800 guibg=#444444 gui=none ctermfg=yellow     ctermbg=darkgrey
hi Folded      guifg=#000000 guibg=#00aaaa gui=none ctermfg=cyan       ctermbg=black
hi vimFold     guifg=#888888 guibg=#222222 gui=none ctermfg=darkgrey   ctermbg=grey
hi Search      guifg=#ffffff guibg=#0000ff gui=none ctermfg=white      ctermbg=darkblue
hi IncSearch   guifg=#ffffff guibg=#8888ff gui=none ctermfg=white      ctermbg=lightblue cterm=none
hi WarningMsg  guifg=#ffff00 guibg=#00ff00 gui=none ctermfg=yellow     ctermbg=lightgreen
hi Question    guifg=#00ff00 guibg=#008800 gui=none ctermfg=lightgreen ctermbg=lightgreen cterm=bold    term=standout
hi Pmenu       guifg=#00ff00 guibg=#00aa00 gui=none ctermfg=green      ctermbg=green      cterm=bold    term=standout
hi PmenuSel    guifg=#ffcc00 guibg=#aa0000 gui=bold ctermfg=yellow     ctermbg=red        cterm=bold    term=standout
hi Visual      guifg=#00ff00 guibg=#00aa00 gui=bold ctermfg=green      ctermbg=green      cterm=bold    term=standout
hi StatusLine   gui=bold,underline	guifg=White		guibg=#c06060
hi StatusLineNC gui=NONE	guifg=White             guibg=#1b5d6c
"hi StatusLine   gui=bold,underline	guifg=White		guibg=#c06060
"hi StatusLineNC gui=NONE	guifg=White             guibg=#1b5d6c
hi helpHyperTextJump guifg=#ffaa00" guibg=bg ctermfg=darkyellow

hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi clear SpellLocal
hi SpellBad    guisp=red    gui=undercurl cterm=underline
hi SpellCap    guisp=yellow gui=undercurl cterm=underline
hi SpellRare   guisp=blue   gui=undercurl cterm=underline
hi SpellLocal  guisp=orange gui=undercurl cterm=underline
