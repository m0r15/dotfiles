
" =============================================================================
" Specify a directory for plugins
" https://github.com/junegunn/vim-plug
" https://vimawesome.com/
call plug#begin(stdpath('data') . '/plugged')

" Colorschem
Plug 'morhetz/gruvbox'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" auto commenter
Plug 'preservim/nerdcommenter', { 'on': 'NERDCommenterToggle' }

" Initialize plugin system
call plug#end()
" =============================================================================

" Colorscheme
let g:gruvbox_contrast_dark = 'medium' " soft, medium, hard
colorscheme gruvbox

" Config vim params
syntax on
set number
set expandtab
set tabstop=4
set cursorline
set noswapfile

set hlsearch
set incsearch
set ignorecase
set smartcase

" =============================================================================
" Reloads vimrc after saving but keep cursor position
let vimrc_path = stdpath('config') . '/init.vim' " use like $MYVIMRC
if !exists('*ReloadVimrc')
   fun! ReloadVimrc()
       let save_cursor = getcurpos()
       source vimrc_path
       call setpos('.', save_cursor)
   endfun
endif
autocmd! BufWritePost vimrc_path call ReloadVimrc()
" =============================================================================

" == Key Bindings ===================================================
map <C-n> :NERDTreeToggle<CR>
map <C-/> :NERDCommenterToggle<CR>

