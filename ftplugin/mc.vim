" Vim filetype plugin file
" Language:	MCore
" Maintainer:	Daniel Lundén <dlunde@kth.se>

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

" Reasonable defaults from ftplugin/vim.vim:
" Set 'formatoptions' to break comment lines but not other lines,
" and insert the comment leader when hitting <CR> or using "o".
setlocal fo-=t fo+=croql

" Define comments
setlocal comments=:--,://
