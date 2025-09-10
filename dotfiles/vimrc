set laststatus=2		" Always display the statusline in all windows
set showtabline=2		" Always display the tabline, even if there is only one tab
set noshowmode			" Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256

" Custom
set nu
set autoread			" reload files if changed externally
set hlsearch
set ignorecase smartcase    	" make searches case-insensitive, unless they
                            	" contain upper-case letters
" Default line number is too distractive
hi clear LineNr
hi link LineNr Comment
hi link OverLength Error
hi CursorLine ctermbg=black term=none cterm=none
hi CursorLineNr ctermbg=black term=none cterm=none
set cursorline              	  " highlight current line
set showmatch               	  " show matching parenthesis
set autoindent smartindent      " auto/smart indent
set copyindent                  " copy previous indentation on auto indent
set softtabstop=2               " tab key results in # spaces
set tabstop=2                   " tab is # spaces
set shiftwidth=2                " the # of spaces for indenting.
set smarttab                    " at start of line, <Tab> inserts shift width
                                " spaces, <Bs> deletes shift width spaces.
set wrap                        " wrap lines
noh

" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" junegunn/vim-plug section
call plug#begin()
Plug 'ap/vim-css-color'
Plug 'preservim/vim-markdown'
Plug 'Raimondi/delimitMate'
Plug 'Lokaltog/vim-powerline'
call plug#end()
