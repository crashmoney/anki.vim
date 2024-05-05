" ANKI.VIM
" a syntax highlighting package for Anki flashcards in plaintext
" ------
" SPEC:
" - front/back of a card are separated by colons
" - accepts HTML
" - comments begin with a hash ("#")

" don't load if another syntax file is already loaded
if exists("b:current_syntax")
 finish
endif

" SYNTAX MATCHES
syn    match  AnkiComment       '^#.*'         contains=AnkiTodo
syn    match  AnkiHTMLOpen      '<.*>'
syn    match  AnkiHTMLClose     '</.*>'
syn    match  AnkiHTMLBreak     '<br>'         conceal cchar=⏎
syn    region AnkiHTMLBold      start='<b>'    end='</b>' concealends
syn    region AnkiHTMLItalic    start='<emph>' end='</emph>' concealends
syntax match  AnkiHTMLListStart "\<li>"        conceal cchar=•
syntax match  AnkiHTMLListEnd   "\</li>"       conceal
syn    match  AnkiMath          '\\(.*\\)'
syn    match  AnkiSeparator     ':'
syn    match  AnkiFront         '^.*:'         contains=AnkiHTML,AnkiSeparator,AnkiMath,AnkiHTMLBold
syn    match  AnkiBack          ':.*'          contains=AnkiHTMLBold,AnkiHTML,AnkiSeparator,AnkiMath
syn    match  AnkiTodo          'TODO'         contains=AnkiComment
syn    match  AnkiTodo          'WIP'          contains=AnkiComment

" SYNTAX HIGHLIGHTING
hi def link AnkiComment     comment
hi def link AnkiHTMLOpen    preproc
hi def link AnkiHTMLClose   preproc
hi def link AnkiHTMLBreak   preproc
hi          AnkiHTMLBold    cterm=bold gui=bold
hi          AnkiHTMLItalic  cterm=italic gui=italic
hi def link AnkiMath        identifier
hi def link AnkiSeparator   statement
hi def link AnkiFront       constant
hi          AnkiTodo        ctermfg=160 guifg=#ff0000

" SET COMMENTSTRING
set commentstring=#\ %s

" set filetype
let b:current_syntax = "anki"
