set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Install plugin list
Plugin 'tomasr/molokai'
Plugin 'thinca/vim-quickrun'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Lokaltog/vim-easymotion'

" All of Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" ======================================================

" Keybind remap ESC to jj 
noremap! <silent> jj <ESC>

" Encode setting
set fenc=utf-8 " UTF-8 file enconding

" Display setting
set number       " Line number
set cursorline   " Cursor line
set laststatus=2 " Status line
"set showmatch    " Emphasis corresponding parenthesis 

" File operation setting
set autoread   " Aut reload changed file 
set nobackup   " Suppress create backup file
set noswapfile " Suppress create swap file

" Tab/Indent setting
set expandtab     " Replace tab to multi space
set tabstop=2     " Tab space number (Reading file)
set softtabstop=2 " Tab space number (Enter tab key)
set shiftwidth=2  " Auto indent width
set autoindent    " Controll new line tab size
set smartindent   " Controll new line tab size

" Search/Replace setting
set ignorecase " Ignore upper & lower case
set incsearch  " Incremental search
set wrapscan   " Re:search from top 
set hlsearch   " Highlight search result
"
" Color scheme setting
syntax on 
colorscheme molokai
set t_Co=256

" NERDTree setting
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" Emmet setting

" Indent Guides setting
"let g:indent_guides_enable_on_vim_startup = 1

" Easymotion setting
let g:EasyMotion_leader_key = '<Space><Space>'
let g:EasyMotion_keys = 'wertyuiosdfghjkl'
let g:EasyMotion_smartcase = 1

" QuickRun setting
autocmd BufNewFile,BufRead *.js set filetype=javascript
"set splitright  " Display result right pane"
set splitbelow

"let g:quickrun_config = {'*': {'split': 'vertical'}}
let g:quickrun_config = {'*': {'split': ''}}
"let g:quickrun_config['javascript'] = {
"  'exec': 'node %s'
"}
