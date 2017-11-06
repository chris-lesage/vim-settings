" Vim color file
" carvedwood v0.7a
" Maintainer:	Shawn Axsom <axs221@gmail.com>
"               [axs221.1l.com]
" carvedwood -
"     a color scheme modified from my desertocean scheme into a brown
" and green scheme, easier on the eyes and optimized for more important syntax
" to stand out the most (eg comments and values are dark and dull while
" statements are bright).
" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors
" set background=dark

hi clear
syntax reset

let g:colors_name="carvedwood"
hi Normal     guifg=#b09aa0 guibg=#060606
hi NonText    guifg=#7D2625
hi SpecialKey	guifg=#2D0000
" syntax highlighting
hi Comment	  guifg=#008A19 gui=italic
hi Title	  guifg=#60b0ea
hi Underlined guifg=#80aae0
hi Statement  guifg=#fac5b3
hi Type		  guifg=#c5908a
hi Constant	  guifg=#405A60 gui=italic
hi PreProc    guifg=#c07a6a gui=none
hi Identifier guifg=#b36d70
hi Special	  guifg=#606A70
hi Ignore     guifg=grey40
hi Todo		  guifg=black guibg=green gui=bold
hi Error      guibg=#e04462
hi MatchParen gui=bold guibg=#060606 guifg=#ff3300
"end syntax highlighting
" highlight groups
"hi CursorIM
hi Directory guifg=#bbd0df
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
hi Cursor       guibg=#205a50 guifg=#7ab0aa
"hi CursorLine	term=underline guibg=#fC0E0B cterm=underline
hi CursorLine   cterm=underline guibg=#191919
hi CursorColumn cterm=underline guibg=#0C0E0B
hi FoldColumn	guibg=#403533 guifg=#00CCFF
hi LineNr       guifg=#304543
hi StatusLine	guibg=#504541 guifg=#AAAAAA gui=none
hi StatusLineNC	guibg=#1D1715 guifg=#555555 gui=none
hi Search       guibg=#5a6d7d guifg=#bac5d0
hi IncSearch	guifg=#50606d guibg=#cddaf0
hi VertSplit	guibg=#1D1715 guifg=#1D1715 gui=none
hi Folded       guibg=#0a4f4d guifg=#BBDDCC
hi ModeMsg    	guifg=#00AACC
hi MoreMsg      guifg=SeaGreen
hi Question    	guifg=#AABBCC
hi Visual       guifg=#008FBF guibg=#33DFEF
"hi VisualNOS
hi WarningMsg	guifg=salmon
"hi WildMenu
"hi Menu
"hi Scrollbar  guibg=grey30 guifg=tan
"hi Tooltip
" color terminal definitions
hi SpecialKey	ctermfg=darkgreen
hi NonText	cterm=bold ctermfg=darkblue
hi Directory	ctermfg=darkcyan
hi ErrorMsg	cterm=bold ctermfg=7 ctermbg=1
hi IncSearch	cterm=NONE ctermfg=yellow ctermbg=green
hi Search	cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg	ctermfg=darkgreen
hi ModeMsg	cterm=NONE ctermfg=brown
hi LineNr	ctermfg=3
hi Question	ctermfg=green
hi StatusLine	cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit	cterm=reverse
hi Title	ctermfg=5
hi Visual	cterm=reverse
hi VisualNOS	cterm=bold,underline
hi WarningMsg	ctermfg=1
hi WildMenu	ctermfg=0 ctermbg=3
hi Folded	ctermfg=darkgrey ctermbg=NONE
hi FoldColumn	ctermfg=darkgrey ctermbg=NONE
hi DiffAdd	ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	cterm=bold ctermbg=1
hi Comment	ctermfg=darkcyan
hi Constant	ctermfg=brown
hi Special	ctermfg=5
hi Identifier	ctermfg=6
hi Statement	ctermfg=3
hi PreProc	ctermfg=5
hi Type		ctermfg=2
hi Underlined	cterm=underline ctermfg=5
hi Ignore	cterm=bold ctermfg=7
hi Ignore	ctermfg=darkgrey
hi Error	cterm=bold ctermfg=7 ctermbg=1
"vim: sw=4
