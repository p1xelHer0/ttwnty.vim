" File:         tui20.vim
" URL:          https://github.com/p1xelHer0/tui20
" Author:       Pontus Nagy <pontusnagy@gmail.com>
" License:      MIT

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif

" Diff colors loaded from git
let &s:git_added = system('git config --list | grep added | grep -o -E "[0-8]"')
let &s:git_changed = system('git config --list | grep changed | grep -o -E "[0-8]"')
let &s:git_untracked = system('git config --list | grep untracked | grep -o -E "[0-8]"')

let g:colors_name = 'tui20'

" Syntax
hi Normal ctermfg=7 ctermbg=NONE cterm=NONE
  hi link Comment Normal
  hi link Constant Normal
  hi link Special Normal
  hi link Identifier Normal
  hi link Statement Normal
  hi link PreProc Normal
  hi link Type Normal
  hi link Function Normal
  hi link Repeat Normal
  hi link Operator Normal

  hi link String Normal
  hi link Character Normal
  hi link Number Normal
  hi link Boolean Normal
  hi link Float Normal
  hi link Conditional Normal
  hi link Label Normal
  hi link Keyword Normal
  hi link Include Normal
  hi link Define Normal
  hi link PreCondit Normal
  hi link StorageClass Normal
  hi link Structure Normal
  hi link Typedef Normal
  hi link Tag Normal
  hi link SpecialChar Normal
  hi link Delimiter Normal
  hi link SpecialComment Normal
  hi link Debug Normal

" Visual aid
hi Visual cterm=reverse ctermbg=0
hi VisualNOS ctermfg=1 ctermbg=NONE cterm=NONE
hi MatchParen ctermfg=7 ctermbg=NONE cterm=underline,bold,italic
hi NonText ctermfg=16 ctermbg=NONE cterm=NONE
hi Error ctermfg=0 ctermbg=1 cterm=NONE
hi ErrorMsg ctermfg=1 ctermbg=NONE cterm=NONE
hi WarningMsg ctermfg=0 ctermbg=1 cterm=NONE
hi Todo ctermfg=0 ctermbg=2 cterm=NONE
hi Underlined ctermfg=7 ctermbg=0 cterm=underline
hi Ignore ctermfg=0 ctermbg=8 cterm=NONE
hi SpecialKey ctermfg=0 ctermbg=8 cterm=NONE

" Search
hi Search ctermfg=0 ctermbg=3 cterm=NONE
hi SearchInc ctermfg=0 ctermbg=3 cterm=NONE
hi Directory ctermfg=4 ctermbg=NONE cterm=NONE

" Statusline and prompt
hi StatusLine ctermfg=8 ctermbg=0 cterm=NONE
hi StatusLineNC ctermfg=16 ctermbg=0 cterm=NONE
hi WildMenu ctermfg=3 ctermbg=0 cterm=NONE
hi Question ctermfg=4 ctermbg=NONE cterm=NONE
hi Title ctermfg=16 ctermbg=0 cterm=NONE
hi ModeMsg ctermfg=4 ctermbg=NONE cterm=NONE
hi MoreMsg ctermfg=2 ctermbg=NONE cterm=NONE

" Window and tabs
hi VertSplit ctermfg=NONE ctermbg=NONE cterm=NONE
hi ColorColumn ctermfg=NONE ctermbg=NONE cterm=NONE
hi EndOfBuffer ctermfg=20 ctermbg=NONE cterm=NONE
hi TabLine ctermfg=4 ctermbg=NONE cterm=NONE
hi TabLineFill ctermfg=4 ctermbg=NONE cterm=NONE
hi TabLineSel ctermfg=4 ctermbg=NONE cterm=NONE

" Pmenu
hi Pmenu ctermfg=7 ctermbg=16 cterm=NONE
hi PmenuSel ctermfg=NONE ctermbg=3 cterm=NONE
hi PmenuSbar ctermfg=NONE ctermbg=0 cterm=NONE
hi PmenuThumb ctermfg=NONE ctermbg=4 cterm=NONE

" Cursor, lines and folds
hi Cursor ctermfg=8 ctermbg=NONE cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=16 cterm=NONE
hi CursorLineNr ctermfg=20 ctermbg=0 cterm=bold
hi LineNr ctermfg=18 ctermbg=0 cterm=NONE
hi TermCursorNC ctermfg=0 ctermbg=3 cterm=NONE

" Column
hi Folded ctermfg=8 ctermbg=NONE cterm=NONE
hi FoldColumn ctermfg=20 ctermbg=NONE cterm=NONE
hi CursorColumn ctermfg=8 ctermbg=NONE cterm=NONE
hi SignColumn ctermfg=4 ctermbg=NONE cterm=NONE

" Diff
execute 'hi DiffAdd ctermfg=0 cterm=NONE ctermbg=' . s:git_added
execute 'hi DiffChange ctermfg=0 cterm=NONE ctermbg=' . s:git_changed
execute 'hi DiffDelete ctermfg=0 cterm=NONE ctermbg=' . s:git_untracked
hi DiffText ctermfg=0 ctermbg=4 cterm=NONE

" Spelling
hi SpellBad ctermfg=0 ctermbg=1 cterm=NONE
hi SpellCap ctermfg=4 ctermbg=NONE cterm=underline
hi SpellLocal ctermfg=5 ctermbg=NONE cterm=underline
hi SpellRare ctermfg=6 ctermbg=NONE cterm=underline

" ALE
" hi ALEError cterm=underline
" hi link ALEErrorSign Error
" hi ALEWarning cterm=underline
"   hi link ALEWarningSign Search

" coc.nvim
hi CocHighlightText ctermbg=17

" fzf
hi default fzf1 ctermfg=0 ctermbg=3 guifg=NONE guibg=NONE
hi default fzf2 ctermfg=0 ctermbg=8 guifg=NONE guibg=NONE
hi default fzf3 ctermfg=0 ctermbg=8 guifg=NONE guibg=NONE

" vim-signify
hi SignifySignAdd ctermfg=s:git_added? ctermbg=NONE cterm=NONE 
hi SignifySignChange ctermfg=s:git_changed? ctermbg=NONE cterm=NONE 
hi SignifySignDelete ctermfg=s:git_untracked? ctermbg=NONE cterm=NONE 

" NERDTree
hi NERDTreeDirSlash ctermfg=4 ctermbg=NONE cterm=NONE
  hi link NERDTreeBookmarksLeader NERDTreeDirSlash
hi NERDTreeExecFile ctermfg=7 ctermbg=NONE cterm=NONE
  hi link NERDTreeGitStatusStaged SignifySignAdd
  hi link NERDTreeGitStatusModified SignifySignChange
  hi link NERDTreeGitStatusUntracked SignifySignDelete
  hi link NERDTreeGitStatusRenamed SignifySignDelete
  hi link NERDTreeGitStatusUnmerged SignifySignDelete
  hi link NERDTreeGitStatusIgnored SignifySignDelete

