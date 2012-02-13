" Vim color file
" Maintainer:	Bohdan Vlasyuk <bohdan@vstu.edu.ua>

" darkblue -- for those who prefer dark background
" [note: looks bit uglier with come terminal palettes,
" but is fine on default linux console palette.]

set bg=light
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "darkblue"

" hackz
hi MatchParen guibg=#FFFFFF guifg=Red ctermbg=black ctermfg=White
hi Pmenu      guibg=#D0D0D0 guifg=Darkblue ctermbg=white ctermfg=black
hi PmenuSel   ctermfg=white    ctermbg=darkblue  guifg=Black  guibg=#999999


hi Normal		guifg=gray		guibg=black							ctermfg=gray		ctermbg=none
hi ErrorMsg		guifg=white		guibg=lightblue						ctermfg=white		ctermbg=lightblue
hi Visual		guifg=gray		guibg=black  gui=reverse			ctermfg=lightblue	ctermbg=fg    cterm=reverse
hi VisualNOS	guifg=gray		guibg=black	gui=reverse,underline	ctermfg=lightblue	ctermbg=fg    cterm=reverse,underline
hi Todo			guifg=red		guibg=darkblue						ctermfg=red			ctermbg=darkblue
hi Search		guifg=black		guibg=green							ctermfg=black		ctermbg=green
hi IncSearch	guifg=darkblue	guibg=gray							ctermfg=darkblue	ctermbg=gray

hi SpecialKey		guifg=darkcyan		ctermfg=darkcyan
hi Directory		guifg=cyan			ctermfg=cyan
hi Title			guifg=magenta		gui=none			ctermfg=magenta
hi WarningMsg		guifg=red			ctermfg=red
hi WildMenu			guifg=yellow		guibg=black			ctermfg=yellow ctermbg=black cterm=none term=none
hi ModeMsg			guifg=lightblue		ctermfg=lightblue
hi MoreMsg			ctermfg=darkgreen	ctermfg=darkgreen
hi Question			guifg=green			gui=none			ctermfg=green cterm=none
hi NonText			guifg=darkblue		ctermfg=darkblue

hi StatusLine		guifg=blue guibg=gray gui=none		ctermfg=blue ctermbg=gray term=none cterm=none
hi StatusLineNC		guifg=black guibg=gray gui=none		ctermfg=black ctermbg=gray term=none cterm=none
hi VertSplit		guifg=black guibg=gray gui=none		ctermfg=black ctermbg=gray term=none cterm=none

hi Folded			guifg=darkgrey guibg=gray			ctermfg=white ctermbg=black cterm=none term=none
hi FoldColumn		guifg=darkgrey guibg=black			ctermfg=darkgrey ctermbg=black cterm=bold term=bold

hi LineNr			guifg=green			ctermfg=green cterm=none

hi DiffAdd			guibg=black	ctermbg=darkblue term=none cterm=none
hi DiffChange		guibg=magenta ctermbg=magenta cterm=none
hi DiffDelete		ctermfg=blue ctermbg=cyan gui=bold guifg=blue guibg=cyan
hi DiffText			cterm=bold ctermbg=red gui=bold guibg=red

"hi Cursor			guifg=bg guibg=brown ctermfg=bg ctermbg=brown
"hi lCursor			guifg=bg guibg=darkgreen ctermfg=bg ctermbg=darkgreen


hi Comment			guifg=darkred ctermfg=darkred
"hi Comment			guifg=gray ctermfg=darkgray
hi Constant			ctermfg=magenta guifg=magenta cterm=none
hi Special			ctermfg=yellow guifg=yellow cterm=none gui=none
hi Identifier		ctermfg=cyan guifg=cyan cterm=none
hi Statement		ctermfg=yellow cterm=none guifg=yellow gui=none
hi PreProc			ctermfg=magenta guifg=magenta gui=none cterm=none
hi type				ctermfg=green guifg=green gui=none cterm=none
hi Underlined		cterm=underline term=underline
"hi Ignore			guifg=bg ctermfg=bg
