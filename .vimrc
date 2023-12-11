set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'jiangmiao/auto-pairs'
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'tpope/vim-surround'
call vundle#end()            " required
filetype plugin indent on    " required

" Syntax Highlighting
if has("syntax")
    syntax on
endif

syntax on
let mapleader=","
" set autoindent
" set cindent
set smartindent
set nu
set mouse=a
set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set hlsearch
set showmatch
set autoread
set autowrite
set ruler
set expandtab
set ts=4
set sw=4
" set paste
set background=dark
set t_Co=256
set cursorline

nmap <Leader>rc :rightbelow vnew $MYVIMRC<CR>

" NERDTree
nmap <Leader>n :NERDTreeToggle<CR>
noremap <C-w> <C-w>w
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <C-j> <C-j>h
noremap <C-k> <C-k>h

" colorscheme
colorscheme gruvbox
" highlight Comment cterm=italic

" vim-rainbow
au FileType c,cpp,objc,objcpp,python call rainbow#load()
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

" airline
let g:airline_theme='base16_gruvbox_dark_hard'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': []  }

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall -Wextra -Wpedantic'
let g:syntastic_c_compiler_options = '-std=c11 -Wall -Wextra -Wpedantic'
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python']

" NERD Commenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '//','right': ''  }  }
let g:NERDAltDelims_java = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
" map <leader>d <Plug>NERDCommenterToggle

" Tagbar
map <F8> :TagbarToggle<CR>

" AutoPairs
 let g:AutoPairsFlyMode = 1

" Snippet
 let g:snipMate = { 'snippet_version' : 1 }

" if exists('+termguicolors')
"   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"   set termguicolors
" endif

" SystemVerilog HDL
au BufNewFile,BufRead *.sv set filetype=systemverilog
au BufNewFile,BufRead *.sv so  ~/.vim/syntax/verilog_systemverilog.vim
