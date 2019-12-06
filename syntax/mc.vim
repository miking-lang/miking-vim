" Vim syntax file
" Language:     MCore
" Filenames:    *.mc
" Maintainers:  Daniel Lundén     <dlunde@kth.se>
" URL:          https://github.com/miking-lang/miking
" Last Change:  2019 Dec 5 - First version

" quit when a syntax file was already loaded
if exists("b:current_syntax") && b:current_syntax == "mc"
  finish
endif

" MCore is case sensitive.
syn case match

" Highlighting
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

"syntax keyword mcorePrimitives

"syntax keyword mcoreOperators

syntax keyword mcoreWarning
      \ mexpr
      \ include

highlight link mcoreKeyword Keyword
highlight link mcoreBooleans Boolean
"highlight link mcorePrimitives Ignore
"highlight link mcoreOperators Ignore
highlight link mcoreWarning Special

" TODO Types
" (setq mcore-types-regexp "\\<[[:upper:]][[:word:]]*\\>")

" TODO Comments
" (setq mcore-mode-syntax-table
"      (let ( (synTable (make-syntax-table)))
"        ;; Inline comment “// ...”
"        ;; Inline comment “-- ...”
"        (modify-syntax-entry ?/ ". 12a" synTable)
"        (modify-syntax-entry ?- "_ 123" synTable)
"        (modify-syntax-entry ?\n ">" synTable)
"        synTable))
