call plug#begin('~/.vim/plugged')
" Language
Plug 'fatih/vim-go'

" Completion
" Plug 'valloric/youcompleteme'
Plug 'vim-scripts/OmniCppComplete'

" Code display
Plug 'bling/vim-airline'

" Integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Interface
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'nathanaelkane/vim-indent-guides'

" Commands
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'terryma/vim-multiple-cursors'
Plug 'andrewradev/splitjoin.vim'

" Other
Plug 'flazz/vim-colorschemes'
Plug 'sainnhe/gruvbox-material'
call plug#end()

colorscheme gruvbox-material

source ~/.vim/default.vim 
source ~/.vim/vim-go.vim
source ~/.vim/map.vim
source ~/.vim/autocmd.vim
