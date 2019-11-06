set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'mattn/calendar-vim'
Plugin 'vimwiki/vimwiki'
Plugin 'vim-scripts/L9'
Plugin 'atom/fuzzy-finder'
Plugin 'scrooloose/syntastic'
Plugin 'wgibbs/vim-irblack'
Plugin 'nvie/vim-flake8'
"Plugin 'garbas/vim-web-indent'

Plugin 'scrooloose/nerdtree'
Plugin 'corntrace/bufexplorer'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/taglist.vim'
Plugin 'tpope/vim-surround'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ------------ END Vundle _______________

"no bell
set vb t_vb=". 

" -----------------------------------------------------------------------------
" | Buffer |
" -----------------------------------------------------------------------------
set hid "Hide abandon buffers to not lose undo history.
autocmd! bufwritepost .vimrc source %
" Sets path to directory buffer was loaded from
" autocmd BufEnter * lcd %:p:h
"autocmd BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl
"autocmd BufNewFile *.py 0r $VIMHOME/templates/python.tpl
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
filetype off
set runtimepath+=/Applications/LilyPond.app/Contents/Resources/share/lilypond/current/vim/
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

" Notes
let g:notes_directories = ['~/Documents/Notes']


" -----------------------------------------------------------------------------
"  | Functions |
" -----------------------------------------------------------------------------
if !exists("*gtd_open()")
  function! s:gtd_open()
    tabnew
    lcd ~/gprojects/GTD
    e ~/Documents/Notes
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
    :normal i## <datehere>
    let a=system("date") | exec ".s/<datehere>/".a."/g" | .s/\%x00//g
    Underline
  endfunction

  command! Date :call <SID>insert_date_line()
endif

" https://blog.mague.com/?p=602
function! ToggleCalendar()
  execute ":Calendar"
  if exists("g:calendar_open")
    if g:calendar_open == 1
      execute "q"
      unlet g:calendar_open
    else
      g:calendar_open = 1
    end
  else
    let g:calendar_open = 1
  end
endfunction
:autocmd FileType vimwiki map <Leader>c :call ToggleCalendar()

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
"map <Leader><F5> :FufCoverageFile <CR>
map <Leader><F5> "= "= " .strftime("%Y-%m-%d") . " ="<CR>P

map <Leader><F6> :FufTag <CR>
map <Leader><F8> :!/opt/local/bin/ctags  --c++-kinds=+p -R --fields=+iaS --extra=+q --languages=-javascript,-html,-C,-C++,-vim,-make .<CR>


" ------------------
"  Try to fix yaml 
"  ----------------
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/ftplugin/yaml.vim
