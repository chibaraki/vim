set nocompatible
filetype off            " for NeoBundle

if has('vim_starting')
set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'Shougo/vimproc.vim', {
			\ 'build' : {
			\     'windows' : 'tools\\update-dll-mingw',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make',
			\     'linux' : 'make',
			\     'unix' : 'gmake',
			\    },
			\ }
set rtp+=$HOME/.vim/bundle/vimproc.vim/autoload/
set rtp+=$HOME/.vim/bundle/vimproc.vim/lib/
set rtp+=$HOME/.vim/bundle/vimproc.vim/plugin/
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'osyo-manga/vim-watchdogs'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'open-browser.vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'tell-k/vim-browsereload-mac'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'kana/vim-operator-user'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-smartinput'
NeoBundle 'rhysd/vim-operator-surround'
call neobundle#end()

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set noexpandtab
set softtabstop=0

NeoBundleCheck
