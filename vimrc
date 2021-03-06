" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup
set nowritebackup
set noswapfile 
set history=50    "keep 50 lines of command line history
set ruler         "show the cursor position all the time
set showcmd       "display incomplete commands
set incsearch     " do incremental searching
set laststatus=2   "always display the status line
set wrap

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
  set hlsearch
endif

" Switch wrap off for everything
set nowrap

"VUNDLE!!
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Persisted undo
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile


"My Bundles
Bundle 'git://github.com/rodjek/vim-puppet.git'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-rails'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-endwise'
Bundle 'pangloss/vim-javascript'
Bundle 'tsaleh/vim-supertab'
Bundle 'danro/rename.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'jgdavey/tslime.vim'
Bundle 'mileszs/ack.vim'
Bundle 'tomtom/tcomment_vim'




"END VUNDLE!!
filetype plugin indent on 

augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif

augroup END


" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" \ is the leader character
let mapleader = ","

"Bring in the shortcuts
source $HOME/.vim/shortcuts/rails.vim
source $HOME/.vim/shortcuts/other.vim
source $HOME/.vim/syntax/tabularizing.vim
source $HOME/.vim/functions.vim

" For Haml
au! BufRead,BufNewFile *.haml         setfiletype haml

" No Help, please
nmap <F1> <Esc>

" Press ^F from insert mode to insert the current file name
imap <C-F> <C-R>=expand("%")<CR>

" Maps autocomplete to tab
imap <Tab> <C-N>
imap <C-L> <Space>=><Space>

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Local config
if filereadable(".vimrc.local")
  source .vimrc.local
endif

" Use Ack instead of Grep when available
"set grepprg=ack\ -H\ --nogroup\ --nocolor\ --ignore-dir=tmp\ --ignore-dir=coverage
set grepprg=ack

" Color scheme
set background=dark
colorscheme jellybeans
set t_Co=256

" Numbers
set number
set numberwidth=5

" Snippets are activated by Shift+Tab
"let g:snippetsEmu_key = "<S-Tab>"

" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
set completeopt=longest,menu
set wildmode=list:longest,list:full
set complete=.,t

" case only matters with mixed case expressions
set ignorecase
set smartcase

" Tags
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"
set tags=./tags;

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

"Mapping to be able to copy and paste:
set clipboard=unnamed

"show the 80 char line
"set colorcolumn=100
"
autocmd BufWinEnter,WinEnter * setlocal colorcolumn=80
autocmd BufWinLeave,WinLeave * setlocal colorcolumn=0

"commandt
let g:CommandTMatchWindowReverse = 1
