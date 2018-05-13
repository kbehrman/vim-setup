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
 
" un fold when open buffer
"au BufRead * normal zR
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
" colorscheme ir_black
" set foldmethod=syntax

" -----------------------------------------------------------------------------
" | Insert |
" -----------------------------------------------------------------------------
" indent called in plugins
set cino=(0
set backspace=indent,eol,start
let loaded_matchparen = 1 "get rid of jumping parenthesis
set tabstop=4     
set shiftwidth=4 
set softtabstop=4     
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
set noignorecase 
set smartcase


" -----------------------------------------------------------------------------
" | Normal |
" -----------------------------------------------------------------------------
source $VIMRUNTIME/macros/matchit.vim

" -----------------------------------------------------------------------------
" | Pluggins |
" -----------------------------------------------------------------------------
call pathogen#infect()
Helptags
filetype on
filetype plugin on
filetype indent on
let NERDTreeIgnore=['\.pyc$']
let g:NERDTreeDirArrows=0
let g:Tex_ViewRule_pdf = 'Preview'
let g:VCSCommandSplit = 'vertical'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5

" taglist
let Tlist_Ctags_Cmd = "/opt/local/bin/ctags"
let Tlist_WinWidth = 50


" -----------------------------------------------------------------------------
"  | Functions |
" -----------------------------------------------------------------------------
if !exists("*gtd_open()")
  function! s:gtd_open()
    tabnew
    lcd ~/projects/GTD
    e ~/.work-logs
  endfunction

  command! GTDOpen :call <SID>gtd_open()
endif

" http://vim.wikia.com/wiki/Underline_using_dashes_automatically
function! s:Underline(chars)
  let chars = empty(a:chars) ? '-' : a:chars
  let nr_columns = virtcol('$') - 1
  let uline = repeat(chars, (nr_columns / len(chars)) + 1)
  put =strpart(uline, 0, nr_columns)
endfunction
command! -nargs=? Underline call s:Underline(<q-args>)

if !exists("*insert_date_line()")
  function! s:insert_date_line()
    r !date
    Underline
  endfunction

  command! Date :call <SID>insert_date_line()
endif

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

map <Leader><F3> :NERDTreeToggle<cr>
map <Leader><F4> :TlistToggle<CR>
map <Leader><F5> :FufCoverageFile <CR>
map <Leader><F6> :FufTag <CR>
map <Leader><F8> :!/opt/local/bin/ctags  --c++-kinds=+p -R --fields=+iaS --extra=+q --languages=-javascript,-html,-C,-C++,-vim,-make .<CR>


" ------------------
"  Try to fix yaml 
"  ----------------
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/ftplugin/yaml.vim
