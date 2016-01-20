" Command and Status
set history=9999 " Command line history
set laststatus=2 " When the last window will have a status line (0 - never; 1 - at least two windows; 2 - always)
set showcmd " Show incomplete commands
set visualbell " Prefer visual to audial feedback

" Cursor
set cursorline " Highlight current line
set gcr=a:blinkon0 " Disable cursor bliking

" Files and Syntax
set autoread " When a file has been detected to have been changed outside of Vim and it has not been changed inside of Vim, automatically read it again
set backup " Create backup files
set backupdir=~/.nvim/backup " Backup files dir
set directory=~/.nvim/temp " Swap files dir
set hidden " Allow hidden buffers
set list listchars=tab:▸\ ,trail:· " Show tabs and trailing spaces
set showmatch " When a bracket is inserted, briefly jump to the matching one
set undodir=~/.nvim/undo " Undo files dir
set undofile " Create undo files
silent !mkdir ~/.nvim/backup > /dev/null 2>&1
silent !mkdir ~/.nvim/temp > /dev/null 2>&1
silent !mkdir ~/.nvim/undo > /dev/null 2>&1
syntax on

" Folding
set foldignore= " Stops folds breaking on empty lines
set foldlevelstart=20 " Hopefully open file with all folds open
set foldmethod=indent " The kind of folding used for the current window
set foldnestmax=20 " Sets the maximum nesting of folds for the indent and syntax methods

" Identation
set autoindent " Copy indent from current line when starting new line
set expandtab " Use the appropriate number of spaces to insert a <Tab>
set shiftwidth=4 " Number of spaces to use for each step (auto)indent
set smartindent " Do smart autoindenting when starting a new line
set smarttab " When on a <Tab> in front of a line inserts blanks according to 'shiftwidth'
set softtabstop=4 " Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>
set tabstop=4 " Number of spaces that a <Tab> in the file counts for

" Keys
let mapleader="," " Remap leader key to ,
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
nmap <silent> // :nohlsearch<CR>
set backspace=indent,eol,start " Allow backspace in insert mode
set timeoutlen=800 " Timeout (milliseconds) for mapped key sequence

" Lines
set linebreak " Wrap long lines at a character in 'breakat' rather than last character that fits on the screen
set number " Show line numbers
set wrap " Wrap long lines

" Search
set hlsearch " When there is a previous search pattern, highlight all its matches
set ignorecase smartcase " Ignore case in search patterns, overrdien if contains uppercase characters
set incsearch " While typing a search command, show where the pattern so far matches

" Scrolling
set scrolloff=3 " Minimal number of screen lines to keep above and below the cursor
set sidescroll=1 " The minimal number of colums to scroll horizontally
set sidescrolloff=10 " The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set
set t_ti= t_te= " Keep last position in the scroll buffer when using view, man, etc. http://www.shallowsky.com/linux/noaltscreen.html

" Tags
set tags+=.tags

" Widows
set winwidth=80 " Minimal number of columns for the current window

" Plugins (Vundle https://github.com/gmarik/vundle)
" Was at the top but moved to the bottom because some settings depend on
" general Vim settings.
" Loads settings from .vim/vundle directory.
set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin('~/.config/nvim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'aaronjensen/vim-sass-status'
Plugin 'altercation/vim-colors-solarized'
Plugin 'briandoll/change-inside-surroundings.vim'
Plugin 'chrisbra/color_highlight'
Plugin 'ck3g/vim-change-hash-syntax'
Plugin 'craigemery/vim-autotag'
Plugin 'digitaltoad/vim-jade'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'evidens/vim-twig'
Plugin 'garbas/vim-snipmate'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'itspriddle/vim-jquery'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'juvenn/mustache.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kshenoy/vim-signature'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Lokaltog/vim-powerline'
Plugin 'majutsushi/tagbar'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'mattn/webapi-vim'
Plugin 'moll/vim-node'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'nrocco/vim-phplint'
Plugin 'peterhost/YankRing.vim'
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'stephenmckinney/vim-solarized-powerline'
Plugin 'tfnico/vim-gradle'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tcomment_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/camelcasemotion'
Plugin 'vim-scripts/ExplainPattern'
Plugin 'vim-scripts/greplace.vim'
Plugin 'vim-scripts/groovy.vim'
Plugin 'vim-scripts/IndexedSearch'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/Specky'
Plugin 'vim-scripts/sudo.vim'
Plugin 'vim-scripts/TagHighlight'
Plugin 'walm/jshint.vim'
Plugin 'wavded/vim-stylus'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
call vundle#end()

filetype plugin indent on
runtime! vundle/*.vim