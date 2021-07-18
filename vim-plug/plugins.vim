" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    	" Better Syntax Support
    	Plug 'sheerun/vim-polyglot'
    	" File Explorer
    	Plug 'scrooloose/NERDTree'
    	" Auto pairs for '(' '[' '{'
    	Plug 'jiangmiao/auto-pairs'
    
   	"Color Themes
	Plug 'sainnhe/edge'
  Plug 'tomasiser/vim-code-dark'
  Plug 'filipekiss/night-hawk'
  Plug 'flrnprz/plastic.vim'
  Plug '1612492/github.vim'

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'ervandew/supertab'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'puremourning/vimspector'
	Plug 'prettier/vim-prettier', { 'do': 'npm install' , 'branch' : 'release/1.x' }
	Plug 'dense-analysis/ale'
	"Fuzzy Search
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()


