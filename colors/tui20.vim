set encoding=utf-8
scriptencoding utf-8

let g:colors_name = 'tui20'

highlight clear

if exists('syntax_on')
  syntax reset
endif


set background=dark

let s:GitAddColor = system('git config --list | grep added | grep -o -E "[0-8]"')
let s:GitChangeColor = system('git config --list | grep changed | grep -o -E "[0-8]"')
let s:GitUntrackedColor = system('git config --list | grep untracked | grep -o -E "[0-8]"')

highlight Normal ctermfg=7 ctermbg=NONE cterm=NONE
highlight NonText ctermfg=16 ctermbg=NONE cterm=NONE
highlight EndOfBuffer ctermfg=0 ctermbg=NONE cterm=NONE
highlight Comment ctermfg=20 ctermbg=NONE cterm=NONE
highlight Constant ctermfg=7 ctermbg=NONE cterm=NONE
highlight Error ctermfg=0 ctermbg=1 cterm=NONE
highlight ErrorMsg ctermfg=1 ctermbg=NONE cterm=NONE
highlight Identifier ctermfg=7 ctermbg=NONE cterm=NONE
highlight Ignore ctermfg=0 ctermbg=8 cterm=NONE
highlight PreProc ctermfg=7 ctermbg=NONE cterm=NONE
highlight Special ctermfg=7 ctermbg=NONE cterm=NONE
highlight Statement ctermfg=7 ctermbg=NONE cterm=NONE
highlight String ctermfg=7 ctermbg=NONE cterm=NONE
highlight Number ctermfg=7 ctermbg=NONE cterm=NONE
highlight Todo ctermfg=0 ctermbg=2 cterm=NONE
highlight Type ctermfg=7 ctermbg=NONE cterm=NONE
highlight Underlined ctermfg=1 ctermbg=NONE cterm=underline

highlight MatchParen ctermfg=7 ctermbg=NONE cterm=underline,bold,italic

highlight LineNr ctermfg=18 ctermbg=0 cterm=NONE
highlight CursorLineNr ctermfg=20 ctermbg=0 cterm=bold
highlight CursorLine ctermfg=NONE ctermbg=16 cterm=NONE
  highlight link FoldColumn CursorLineNr

highlight Folded ctermfg=8 ctermbg=NONE cterm=NONE

highlight TermCursorNC ctermfg=0 ctermbg=3 cterm=NONE
highlight Title ctermfg=7 ctermbg=NONE cterm=NONE
highlight helpLeadBlank ctermfg=7 ctermbg=NONE cterm=NONE
highlight helpNormal ctermfg=7 ctermbg=NONE cterm=NONE
highlight Visual cterm=reverse ctermbg=0
highlight VisualNOS ctermfg=1 ctermbg=NONE cterm=NONE

highlight SpecialKey ctermfg=8 ctermbg=NONE cterm=NONE

execute 'highlight DiffAdd ctermfg=0 cterm=NONE ctermbg=' . s:GitAddColor
execute 'highlight DiffChange ctermfg=0 cterm=NONE ctermbg=' . s:GitChangeColor
execute 'highlight DiffDelete ctermfg=0 cterm=NONE ctermbg=' . s:GitUntrackedColor
highlight DiffText ctermfg=0 ctermbg=4 cterm=NONE

highlight Search ctermfg=0 ctermbg=3 cterm=NONE
  highlight! link SearchInc Search
  highlight! link WildMenu Search
  highlight! link TabLineSel Search
  highlight! link PmenuSel Search

highlight StatusLine ctermfg=8 ctermbg=0 cterm=NONE
highlight StatusLineNC ctermfg=8 ctermbg=0 cterm=NONE

highlight TabLine ctermfg=0 ctermbg=8 cterm=NONE
highlight! link TabLineFill StatusLine

highlight VertSplit ctermfg=NONE ctermbg=NONE cterm=NONE

highlight Pmenu ctermfg=7 ctermbg=16 cterm=NONE
highlight PmenuSbar ctermfg=NONE ctermbg=0 cterm=NONE
highlight PmenuThumb ctermfg=NONE ctermbg=4 cterm=NONE

highlight Directory ctermfg=4 ctermbg=NONE cterm=NONE
highlight ColorColumn ctermfg=0 ctermbg=4 cterm=NONE
highlight signColumn ctermfg=4 ctermbg=NONE cterm=NONE
highlight ModeMsg ctermfg=4 ctermbg=NONE cterm=NONE
highlight MoreMsg ctermfg=2 ctermbg=NONE cterm=NONE
highlight Question ctermfg=4 ctermbg=NONE cterm=NONE
highlight WarningMsg ctermfg=0 ctermbg=1 cterm=NONE
highlight Cursor ctermfg=8 ctermbg=NONE cterm=NONE
highlight Structure ctermfg=7 ctermbg=NONE cterm=NONE
highlight CursorColumn ctermfg=7 ctermbg=8 cterm=NONE
highlight SpellBad ctermfg=0 ctermbg=1 cterm=NONE
highlight SpellCap ctermfg=4 ctermbg=NONE cterm=underline
highlight SpellLocal ctermfg=5 ctermbg=NONE cterm=underline
highlight SpellRare ctermfg=6 ctermbg=NONE cterm=underline
highlight Boolean ctermfg=7 ctermbg=NONE cterm=NONE
highlight Character ctermfg=7 ctermbg=NONE cterm=NONE
highlight Conditional ctermfg=7 ctermbg=NONE cterm=NONE
highlight Define ctermfg=7 ctermbg=NONE cterm=NONE
highlight Delimiter ctermfg=7 ctermbg=NONE cterm=NONE
highlight Float ctermfg=7 ctermbg=NONE cterm=NONE
highlight Include ctermfg=7 ctermbg=NONE cterm=NONE
highlight Keyword ctermfg=7 ctermbg=NONE cterm=NONE
highlight Label ctermfg=7 ctermbg=NONE cterm=NONE
highlight Operator ctermfg=7 ctermbg=NONE cterm=NONE
highlight Repeat ctermfg=7 ctermbg=NONE cterm=NONE
highlight SpecialChar ctermfg=7 ctermbg=NONE cterm=NONE
highlight Tag ctermfg=7 ctermbg=NONE cterm=NONE
highlight Typedef ctermfg=7 ctermbg=NONE cterm=NONE


" }}}
" =============================================================================
" plugin colors {{{
" =============================================================================

" ALE
highlight ALEError cterm=underline
highlight link ALEErrorSign Error
highlight ALEWarning cterm=underline
highlight link ALEWarningSign Search


" coc.nvim

highlight CocHighlightText ctermbg=17

" fzf
highlight default fzf1 ctermfg=0 ctermbg=3 guifg=NONE guibg=NONE
highlight default fzf2 ctermfg=0 ctermbg=8 guifg=NONE guibg=NONE
highlight default fzf3 ctermfg=0 ctermbg=8 guifg=NONE guibg=NONE

" NERDTree
highlight NERDTreeDirSlash ctermfg=4 ctermbg=NONE cterm=NONE
highlight link NERDTreeBookmarksLeader NERDTreeDirSlash
highlight NERDTreeExecFile ctermfg=7 ctermbg=NONE cterm=NONE

highlight NERDTreeGitStatusStaged ctermfg=4 cterm=NONE

highlight link NERDTreeGitStatusModified SignifySignChange
highlight link NERDTreeGitStatusUntracked SignifySignDelete
highlight link NERDTreeGitStatusRenamed SignifySignDelete
highlight link NERDTreeGitStatusUnmerged SignifySignDelete
highlight link NERDTreeGitStatusIgnored SignifySignDelete

" vim-signify
execute 'highlight SignifySignAdd ctermbg=NONE cterm=NONE ctermfg=' . s:GitAddColor
execute 'highlight SignifySignChange ctermbg=NONE cterm=NONE ctermfg=' . s:GitChangeColor
execute 'highlight SignifySignDelete ctermbg=NONE cterm=NONE ctermfg=' . s:GitUntrackedColor


" }}}
