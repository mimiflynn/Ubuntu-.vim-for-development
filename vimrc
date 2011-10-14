set t_Co=256
colorscheme ir_black

set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab

set nocompatible
set shell=bash\ -l
syntax on
set number
set autoread
set backspace=2

filetype plugin indent on
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
let python_highlight_all = 1
let python_slow_sync = 1

" Let's us save with \w.
" \ is the default leader key.
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :tabedit! ~/.vimrc<CR>

" Clear trailing whitespace with \s and save the file.
map <leader>s :%s/\s\+$//e<CR>:w!<CR>

" Open files quickly with \o.
map <leader>o :tabedit<Space>

map <leader>t :CommandT<CR>

" Open a custom Commad-T instace with \T
map <leader>T :CommandT<Space>/var/www/

" Open files verticall quickly with \v.
map <leader>v :vsplit<Space>

" Better tab functionality.
map <leader>[ :tabprev<CR>
map <leader>] :tabnext<CR>
map <leader>- :tabfirst<CR>
map <leader>= :tablast<CR>
" Toggle paste mode wiht \p
set pastetoggle=<leader>p

" Toggle line numbers with \n
nmap <leader>n :set invnumber<CR>

" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
" Or maybe: autocmd BufWritePost .vimrc source %

" Ignore case while searching.
set ignorecase
set smartcase
set incsearch

" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

map <space> /
map <c-space> ?

"set smartindent
"set tabstop=2
"set shiftwidth=2
"set expandtab

set wildignore+=*.o,*.obj,.git,.hg/**,*.pyc,*.png,*.gif,*.jpg,*.jpeg,*.egg-info/**,*.mo
let g:CommandTAcceptSelectionTabMap='<CR>'

hi ColorColumn ctermbg=234

if version >= 703
  set colorcolumn=81,82
endif

" MF additions (above is silvio's)

"Enable Spell check
"set spell

"Set autoindent
set ai

"Appearance
set lines=60
set columns=100
set guioptions-=T
set background=dark

"highlight current line
set cursorline

"highlight bg color of current line
hi cursorline guibg=#0F3959

" Enable use of the mouse for all modes
set mouse=a
