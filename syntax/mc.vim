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

syntax keyword mcoreBooleans
      \ false
      \ true

syntax keyword mcoreWarning
      \ mexpr
      \ include

" Types
syntax match mcoreType /\<\u\w*\>/

" Comments
syntax match mcoreComment /\/\/.*/
syntax match mcoreComment /--.*/

" Highlight colors
highlight link mcoreKeyword Keyword
highlight link mcoreBooleans Boolean
highlight link mcoreWarning Special
highlight link mcoreType Type
highlight link mcoreComment Comment

