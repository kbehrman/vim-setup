set nocompatible
"no bell
set vb t_vb=". 

" -----------------------------------------------------------------------------
" | Buffer |
" -----------------------------------------------------------------------------
set hid "Hide abandon buffers to not lose undo history.
autocmd! bufwritepost .vimrc source %
" Sets path to directory buffer was loaded from
" autocmd BufEnter * lcd %:p:h
autocmd BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl
autocmd BufNewFile *.py 0r $VIMHOME/templates/python.tpl
"autocmd BufNewFile *.rb 0r $VIMHOME/templates/ruby.tpl
"autocmd BufNewFile *.js 0r $VIMHOME/templates/javascript.tpl
set history=1000
set directory=~/tmp/vim_working//,$VIMHOME/tmp//,/tmp//

" -----------------------------------------------------------------------------
" | Display |
" -----------------------------------------------------------------------------
syntax on
set number
set cursorline
set showcmd
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
set laststatus=2
set t_Co=256 " 256 colors
set background=dark
colorscheme ir_black_mod

" -----------------------------------------------------------------------------
" | Insert |
" -----------------------------------------------------------------------------
set cindent
set cino=(0
set backspace=indent,eol,start
let loaded_matchparen = 1 "get rid of jumping parenthesis
set tabstop=2     
set shiftwidth=2 
set softtabstop=2     
set smarttab       
set expandtab        


" -----------------------------------------------------------------------------
" | Command |
" -----------------------------------------------------------------------------
set wildmenu
set hlsearch  " highlight search
set incsearch " incremental search, search as you type
set showmatch
set scrolloff=5
set ignorecase 
set smartcase


" -----------------------------------------------------------------------------
" | Normal |
" -----------------------------------------------------------------------------
source $VIMRUNTIME/macros/matchit.vim

" -----------------------------------------------------------------------------
" | Pluggins |
" -----------------------------------------------------------------------------
filetype on
filetype plugin on
filetype indent on
let NERDTreeIgnore=['\.pyc$']

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

" taglist
let Tlist_Ctags_Cmd = "/opt/local/bin/ctags"
let Tlist_WinWidth = 50



" -----------------------------------------------------------------------------
" | Mappings |
" -----------------------------------------------------------------------------
nnoremap <space> za
" Professor VIM says '87% of users prefer jj over esc', jj abrams strongly disagrees
imap jj <Esc>


:" The leader defaults to backslash, so (by default) this
:" maps \* and \g* (see :help Leader).
:" These work like * and g*, but do not move the cursor and always set hls.
:map <Leader>* :let @/ = '\<'.expand('<cword>').'\>'\|set hlsearch<C-M>
:map <Leader>g* :let @/ = expand('<cword>')\|set hlsearch<C-M>


"resize horzontal split window
map + <C-W>+
map - <C-W>-
map <c-n> <c-w><
map <c-m> <c-w>>

" cmap W w

map <F3> :NERDTreeToggle<cr>
map <F4> :TlistToggle<CR>
map <F5> :FufCoverageFile <CR>
map <F6> :FufTag <CR>

