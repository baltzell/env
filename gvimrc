
set guioptions-=m
set guioptions-=T
set guioptions-=l
set guioptions-=r
set guioptions-=L
set guioptions-=R
set guioptions-=b

"colorscheme molokai
colorscheme skittles_berry
set guifont=Monospace\ 11

"map  :set guioptions-=m 
"map  :set guioptions+=m 

"nmap <F12> :let &guifont = substitute(&guifont, ':h\(\d\+\)', '\=":h" . (submatch(1) - 1)', '')<CR>
"nmap <S-F12> :let &guifont = substitute(&guifont, ':h\(\d\+\)', '\=":h" . (submatch(1) + 1)', '')<CR>
"nmap <F12> :let &guifont = substitute(&guifont, '\:h[0-9\.]\+', new_font_size, '')
nmap <F6> :set guifont=Monospace\ 6
nmap <F7> :set guifont=Monospace\ 7
nmap <F8> :set guifont=Monospace\ 8
nmap <F9> :set guifont=Monospace\ 9
nmap <F10> :set guifont=Monospace\ 10
nmap <F11> :set guifont=Monospace\ 11
nmap <F12> :set guifont=Monospace\ 12

"set noantialias
set antialias

