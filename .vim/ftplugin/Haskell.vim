if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

filetype off
if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))
NeoBundle 'eqgletmt/ghcmod-vim'
NeoBundle 'kana/vim-filetype-haskell'
NeoBundle 'ujihisa/neco-ghc'
NeoBundle 'eagletmt/unite-haddock'
call neobundle#end()
let $PATH = $PATH . ':' . expand('~/.cabal/bin')
augroup ghcmodcheck
	autocmd! BufWritePost <buffer> GhcModCheckAsync
augroup END

filetype plugin indent on
