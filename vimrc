
"colorscheme default
"colorscheme metacosm
"colorscheme rastafari
"colorscheme jellybeans
colorscheme molokai

let fortran_free_source=1
let fortran_have_tabs=1

" automatically reread file if changed
set autoread

"splits don't resize when closing one
set noequalalways

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

set wildmenu
set wildmode=list:longest,full
set wildignore=*.o,*.so,*.d,*.a,*~,*.pyc

set hlsearch
set showmatch
set smartcase
set ignorecase
set incsearch

set scrolloff=0
set laststatus=2

set hidden

set history=500
set viminfo=/10,'10,f0,h,"\100

set nomousehide

" status line at bottom of window, above command line
set statusline=\ %F%m%r%h\ %w\ \ \ Line:\ %l/%L:%c
"set statusline=%1*%-52F\ %1*\ %Y\ %4*\ %04l/%03c\ %1*\ %-16{strftime(\"%Y-%m-%d\ %H:%M\")}\ %5*\ %-3m

" setup based upon filetype (~/.vim/(after)/ftplugin)
filetype plugin on
filetype indent on

" tabs in Makefiles
autocmd BufNewfile,BufRead *akefile* set noexpandtab nosmarttab
autocmd BufNewfile,BufRead *.mak set noexpandtab nosmarttab

" COLORS ----------------------------------------------
syntax on
highlight NonText cterm=NONE ctermfg=NONE
highlight Search cterm=bold ctermfg=White ctermbg=LightRed
highlight StatusLine cterm=bold ctermbg=Yellow ctermfg=Black
highlight Folded cterm=NONE ctermbg=DarkGrey ctermfg=Cyan

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

com! Bd enew|bw # |bn

"let g:miniBufExplVSplit = 25
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
highlight def link MBENormal Normal

