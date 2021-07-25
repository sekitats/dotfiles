if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autoload VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  " NERDTree 
  Plug 'preservim/nerdtree'
  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  "  Auto pairs for ( [ {
  Plug 'jiangmiao/auto-pairs'
  " Themes
  " Plug 'joshdick/onedark.vim'
  Plug 'kaicataldo/material.vim'
  " Intellisense
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  " Status Line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Ranger
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  " misc
  Plug 'tomtom/tcomment_vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'editorconfig/editorconfig-vim'

call plug#end()

let g:mapleader = "\<Space>"

" NERDTreeToggle
nnoremap <silent><Leader>e :NERDTreeToggle<CR>

" 挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-a> <HOME>
nnoremap <C-a> <HOME>
inoremap <C-e> <END>
nnoremap <C-e> <END>
inoremap <C-f> <Right>
inoremap <C-b> <BS>
inoremap <C-d> <Del>

" Tab navigation
nnoremap <C->>    :tabprevious<CR>
nnoremap <C-Right>    :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-Left>    <Esc>:tabprevious<CR>i
inoremap <C-Right>    <Esc>:tabnext<CR>i
inoremap <C-t> <Esc>:tabnew<CR>noremap <silent> <C-_><Tab> gt

" 引用符, 括弧の設定
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
vnoremap { "zdi{<C-R>z}<ESC>
vnoremap [ "zdi[<C-R>z]<ESC>
vnoremap ( "zdi(<C-R>z)<ESC>
vnoremap " "zdi"<C-R>z"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>
vnoremap ` "zdi`<C-R>z`<ESC>


