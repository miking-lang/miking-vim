" Vim syntax file
" Language:     MCore
" Maintainer:   Daniel Lundén <dlunde@kth.se>

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" MCore is case sensitive.
syn case match

" Keywords
syntax keyword mcoreKeyword
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
      \ using
      \ external
      \ hole
      \ switch
      \ case

" Booleans
syntax keyword mcoreBooleans
      \ false
      \ true

" Special
syntax keyword mcoreWarning
      \ mexpr
      \ include


" Strings and chars (adapted from syntax/c.vim)
syntax match cSpecial display contained "\\\(x\x\+\|\o\{1,3}\|.\|$\)"
syntax region cString start=+\(L\|u\|u8\|U\|R\|LR\|u8R\|uR\|UR\)\="+ skip=+\\\\\|\\"+ end=+"+ contains=cSpecial,@Spell extend
syntax match cCharacter "L\='[^\\]'"
syntax match cCharacter "L'[^']*'" contains=cSpecial
syntax match cSpecialError "L\='\\[^'\"?\\abefnrtv]'"
syntax match cSpecialCharacter "L\='\\['\"?\\abefnrtv]'"
syntax match cSpecialCharacter display "L\='\\\o\{1,3}'"
syntax match cSpecialCharacter display "'\\x\x\{1,2}'"
syntax match cSpecialCharacter display "L'\\x\x\+'"

" Types
syntax match mcoreType /\<\u\w*\>/

" TODOs from syntax/vim.vim
syntax keyword mcoreTodo contained TODO NOTE OPT

" Comments
syntax match mcoreComment /--.*/ contains=mcoreTodo
syntax region mcoreBlockComment start="/-" end="-/"
      \ contains=mcoreTodo,mcoreBlockComment

" Highlight colors
highlight link mcoreKeyword Keyword
highlight link mcoreBooleans Boolean
highlight link mcoreWarning Special
highlight link mcoreType Type
highlight link mcoreComment Comment
highlight link mcoreBlockComment Comment
highlight link mcoreTodo Todo

highlight link cSpecial SpecialChar
highlight link cCharacter Character
highlight link cString String
highlight link cSpecialError Error
highlight link cSpecialCharacter cSpecial

" Avoid syncing issues with multiline strings
syntax sync minlines=2000
