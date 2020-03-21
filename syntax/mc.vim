" Vim syntax file
" Language:     MCore
" Filenames:    *.mc
" Maintainers:  Daniel Lundén     <dlunde@kth.se>
" URL:          https://github.com/miking-lang/miking
" Last Change:  2019 Dec 5 - First version

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" MCore is case sensitive.
syn case match

" Keywords
syntax keyword mcoreKeyword
      \ Lam
      \ con
      \ else
      \ end
      \ fix
      \ if
      \ in
      \ lam
      \ lang
      \ let
      \ match
      \ recursive
      \ sem
      \ syn
      \ then
      \ type
      \ use
      \ utest
      \ with

" Booleans
syntax keyword mcoreBooleans
      \ false
      \ true

" Special
syntax keyword mcoreWarning
      \ mexpr
      \ include

" Strings
syntax region mcoreString start=/"/ skip=/\\"/ end=/"/

" Types
syntax match mcoreType /\<\u\w*\>/

" TODOs from vim.vim
syn keyword mcoreTodo contained COMBAK FIXME TODO XXX

" Comments
syntax match mcoreComment /\/\/.*/ contains=mcoreTodo
syntax match mcoreComment /--.*/ contains=mcoreTodo


" Highlight colors
highlight link mcoreKeyword Keyword
highlight link mcoreBooleans Boolean
highlight link mcoreString String
highlight link mcoreWarning Special
highlight link mcoreType Type
highlight link mcoreComment Comment
highlight link mcoreTodo Todo
