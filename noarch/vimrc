
"let g:tex_fold_enabled=1

let fortran_free_source=1
let fortran_have_tabs=1

" automatically reread file if changed
set autoread

"splits don't resize when closing one
set noequalalways

"set ttymouse=xterm2
"
" copy&replace to mark
" (backwards requires silent)
" :silent :.,'as/arg1/arg2/
"
" copy&replace visual mouse region
" v -------- character
" V -------- line
" ctrl-v --- block
" then, s/arg1/arg2 
"
" select region with mouse, works in urxvt and xterm
" copy:    "*y
" paste:   "*p
"
set gdefault
set linebreak 
set display+=lastline

set mouse=nvicr
"set mouse=vi

set fo+=o

set ruler
set nowrap
set novisualbell
set noerrorbells

set backspace=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l,[,]

set autoindent
set smartindent
set cindent
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set foldmethod=manual
"set foldmethod=syntax
"set nofen
set fdl=100

set wildmenu
set wildmode=list:longest,full
set wildignore=*.o,*.so,*.d,*.a,*~,*.pyc

set hlsearch
set showmatch
set smartcase
set ignorecase
set incsearch

"set scrolloff=2
set scrolloff=0
set laststatus=2

set hidden

set history=500
set viminfo=/10,'10,f0,h,"\100

"let mapleader = ","
"let g:mapleader = ","

set nomousehide

" customize grep command
set grepprg=grep\ -nH\ $*

" status line at bottom of window, above command line
set statusline=\ %F%m%r%h\ %w\ \ \ Line:\ %l/%L:%c

"set statusline=%1*%-52F\ %1*\ %Y\ %4*\ %04l/%03c\ %1*\ %-16{strftime(\"%Y-%m-%d\ %H:%M\")}\ %5*\ %-3m

" setup based upon filetype (~/.vim/(after)/ftplugin)
filetype plugin on
filetype indent on

" sometimes vim doesn't know filetypes
autocmd BufEnter *.PAS set filetype=pascal
"autocmd BufEnter *.sty,*.tex set filetype=tex
autocmd BufEnter *.gpl,*.gnuplot set filetype=gnuplot
autocmd BufEnter *.ppl,*.pyxplot set filetype=gnuplot
autocmd BufEnter *.lcsim         set filetype=xml
autocmd BufEnter *.vimrc         set filetype=vim
autocmd BufEnter *.groovy        set filetype=java

let b:comment_leader = '#'
autocmd FileType c,cpp,java,scala      let b:comment_leader = '// '
autocmd FileType tex                   let b:comment_leader = '% '
autocmd FileType vim                   let b:comment_leader = '" '

autocmd FileType sh,bash let b:vimpipe_command="bash"
autocmd FileType perl    let b:vimpipe_command="perl"
autocmd FileType python  let b:vimpipe_command="python"

" cd to the buffer's directory (annoying)
"autocmd BufEnter * :cd %:p:h

" save and load ~/.vim/view for folds and such
"autocmd BufWinLeave ?* mkview
"autocmd BufWinEnter ?* silent loadview
"autocmd BufWinLeave *.fvwm2rc,*.vimrc mkview
"autocmd BufWinEnter *.fvwm2rc,*.vimrc silent loadview

" tabs in Makefiles
autocmd BufNewfile,BufRead *akefile* set noexpandtab nosmarttab
autocmd BufNewfile,BufRead *.mak set noexpandtab nosmarttab

" COLORS ----------------------------------------------
syntax on
highlight NonText cterm=NONE ctermfg=NONE
highlight Search cterm=bold ctermfg=White ctermbg=LightRed
highlight StatusLine cterm=bold ctermbg=Yellow ctermfg=Black
highlight Folded cterm=NONE ctermbg=DarkGrey ctermfg=Cyan
"colorscheme default
"colorscheme metacosm
"colorscheme rastafari
"

if &term =~ "rxvt"
    set t_Co=256
"    colorscheme molokai
    colorscheme skittles_berry
endif
if &term =~ "xterm-256color"
    set t_Co=256
    colorscheme molokai
endif
"if &term =~ "rxvt-unicode"
"    set t_Co=88
"    colorscheme molokai
"endif


" KEY MAPPINGS ----------------------------------------

" horizontal scrolling:
map <C-ScrollWheelDown> 5zl
map <C-ScrollWheelUp> 5zh

" Y should be analagous to D:
noremap Y y$

" turn on/off search highlighting & search for word under cursor:
map <F4> :set invhls<CR>:let @/="<C-r><C-w>"<CR>/<BS>

" disable scroll left/right:
nmap <ScrollWheelRight> <nop>
nmap <ScrollWheelLeft> <nop>


"noremap j gk
"noremap k gj
"noremap j gj
"noremap k gk
"inoremap <Enter> <Enter><space><bs> 
"nnoremap o o<space><bs> 
"nnoremap O O<space><bs
com! Bd enew|bw # |bn
"map <F2><F3> :w<CR>

" Plugins ---------------------------------------------

" Latex-Suite -----------------------------------------
"let g:Tex_FoldedSections = 0
"let g:Tex_TexMenus = 0

" Mini-Buffer-Explorer --------------------------------
"let g:miniBufExplVSplit = 25
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
highlight def link MBENormal Normal

" TList ----------------------------------------------
"let Tlist_Compact_Format = 1
"let Tlist_Display_Prototype = 1
"hi MyTagListFileName guifg=red ctermfg=red
"hi MyTagListTagName guifg=red ctermfg=red
"let Tlist_Auto_Open = 1

" ----------------------------------------------------

" Function to open multiple files with one command
"function! Open(...)
"    if (a:0 != 0)
"        let i = a:0
"        while(i > 0)
"            execute 'let file = a:' . i
"            execute 'e ' . file
"            " could do a split instead:
"            "execute 'sp ' . file
"            let i = i -1
"        endwhile
"    endif
"endfunction
" filename completion for Open (* wildcard does NOT work, argh)
"com! -nargs=* -complete=file Open call Open(<f-args>)
" turn :e into :Open on vim command-line
"cab e Open

" ----------------------------------------------------

"function! CheckPythonSyntax() 
"  let curfile = bufname("%") 
"  exec ":make " . "-c " . "\"import py_compile; py_compile.compile(r'" . bufname("%") . "')\"" 
"endfunction
"map <F9> <ESC>:call CheckPythonSyntax()<CR>

"function! CurDir()
"    let curdir = substitute(getcwd(), '/home/baltzell/', "~/", "g")
"    return curdir
"endfunction
"set statusline=\ %F%m%r%h\ %w\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c


" macro shortcuts
"map  :w!  :!rm -f %<.dvi %<.aux /tmp/$USER-latex.log  :e /tmp/$USER-latex.log  :r!latex %  :r!xdvi -s 0 -geometry 702x880 %<.dvi 
" remove .dvi and .aux files, run latex once, and then xdvi
"map  :w! :!rm -f %<.dvi %<.aux /tmp/$USER-latex.log ; latex % >& /tmp/$USER-latex.log ; xdvi -s 0 -geometry 702x880 %<.dvi >>& /tmp/$USER-latex.log & 
"map  :w! :!rm -f /tmp/$USER-latex.log ; latex % >& /tmp/$USER-latex.log ; xdvi +6 -s 0 %<.dvi >>& /tmp/$USER-latex.log & 
" remove dvi and aux files, run latex twice, and then dvips and ghostview, and open log file
"map  :w! :!rm -f %<.dvi %<.aux /tmp/$USER-latex.log ; latex % >& /tmp/$USER-latex.log ; latex % >>& /tmp/$USER-latex.log ; dvips -o%<.ps %<.dvi >>& /tmp/$USER-latex.log  ; \gv %<.ps >>& /tmp/$USER-latex.log :e /tmp/$USER-latex.log 
"map  :w! :!rm -f %<.dvi %<.aux ; latex.sh % ; psbind %<.ps > %<2.ps 
" emulate LaTexIt for OSX
"map  :w! :!$HOME/scripts/texit.pl % &
" compile ROOT macro, and open log file
"map  :w! :!rm -f /tmp/$USER-root.log ; echo .L %++ \| root >& /tmp/$USER-root.log :e /tmp/$USER-root.log 
" compile and run ROOT, and open log file
"map  :w! :!rm -f /tmp/$USER-root.log ; echo .x %++ \| root >& /tmp/$USER-root.log :e /tmp/$USER-root.log 
" run ROOT macro
"map  :w! :!root % 
" run special script
"map  :w! :!$HOME/docs/nabo/ananote/scripts/doall >& /dev/null & 
"map  :w! :!echo Running Latex .... ; cd .. ; ./ctex 1 >& /dev/null ; killall -s 10 xdvi-motif 
"map  :!cd .. ; ./ctex 1 >& /dev/null ; killall -s 10 xdvi-motif 
"map  :!./cdoit %< >& /dev/null & 
"map  :w! :!./cdoit %< >& /dev/null & 
"map  :w! :!../bridget.sh >& /dev/null &
"map  :w! :!latex.sh % >& /dev/null & 
"map  :w! :!latex % >& /dev/null & 
"map  :w! :!gnuplot -persist % >& /dev/null& 
"map  :w! :!latexbibdvi.sh % >& /dev/null & 
" map  :w! :!./ltx >& /dev/null & 
" map  :w! :!./mk >& /dev/null & 
"map  :w! :!./cmake cv_staff >& /dev/null &  





"map  :w! :!texit.pl % >& /dev/null & 
map  :w! :!make >& /dev/null & 
"map  :w! :!pdflatex % >& /dev/null & 
"map  :w! :!pdflatex % >& /dev/null & 
map  :w! :!pdflatex cv.tex >& /dev/null & 
"map  :w! :!pdflatex 1st_round_comments.tex  >& /dev/null & 

map <F2> :set wrap!<CR>


" automatic commenting/uncommenting
" just use ctrl-v block selection if comment characters are in the same column
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
" insert templates into file:
map  0i\begin{equation}\label{}\end{equation}
map  0i\begin{figure}[htbp]\centering\includegraphics[]{}\caption{\label{}}\end{figure}
map  0i\begin{table}[htbp]\centering\begin{tabular}{}\hline\end{tabular}\caption{\label{}}\end{table}
map  0i..oo00OO00oo
"map  0i#ifndef ___%___#define ___%___

