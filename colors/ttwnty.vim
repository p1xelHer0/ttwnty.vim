" ttwnty.vim
" Author:       p1xelHer0
" Webpage:      https://github.com/p1xelHer0/ttwnty.vim

hi clear
set background=dark
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'ttwnty'

" =============================================================================
" default scheme {{{
" =============================================================================

" -----------------------------------------------------------------------------
" editor
" -----------------------------------------------------------------------------
hi Normal            ctermfg=7    ctermbg=NONE cterm=NONE
hi Cursor            ctermfg=8    ctermbg=NONE cterm=NONE
hi CursorLine        ctermfg=NONE ctermbg=16   cterm=NONE
hi CursorLineNr      ctermfg=20   ctermbg=0    cterm=bold
hi LineNr            ctermfg=18   ctermbg=0    cterm=NONE
hi TermCursorNC      ctermfg=0    ctermbg=3    cterm=NONE

" -----------------------------------------------------------------------------
" language constructs
" -----------------------------------------------------------------------------
hi Statement         ctermfg=NONE ctermbg=NONE cterm=NONE
hi Conditional       ctermfg=7    ctermbg=NONE cterm=NONE
hi Repeat            ctermfg=7    ctermbg=NONE cterm=NONE
hi Label             ctermfg=7    ctermbg=NONE cterm=NONE
hi Operator          ctermfg=7    ctermbg=NONE cterm=NONE
hi Keyword           ctermfg=7    ctermbg=NONE cterm=NONE
hi Exception         ctermfg=7    ctermbg=NONE cterm=NONE
hi Comment           ctermfg=7    ctermbg=NONE cterm=NONE
hi Special           ctermfg=7    ctermbg=NONE cterm=NONE
hi SpecialChar       ctermfg=7    ctermbg=NONE cterm=NONE
hi Tag               ctermfg=7    ctermbg=NONE cterm=NONE
hi Delimiter         ctermfg=7    ctermbg=NONE cterm=NONE
hi SpecialComment    ctermfg=7    ctermbg=NONE cterm=NONE
hi Debug             ctermfg=7    ctermbg=NONE cterm=NONE

" C like
hi PreProc           ctermfg=7    ctermbg=NONE cterm=NONE
hi Include           ctermfg=7    ctermbg=NONE cterm=NONE
hi Define            ctermfg=7    ctermbg=NONE cterm=NONE
hi Macro             ctermfg=7    ctermbg=NONE cterm=NONE
hi PreCondit         ctermfg=7    ctermbg=NONE cterm=NONE
hi Type              ctermfg=7    ctermbg=NONE cterm=NONE
hi Typedef           ctermfg=7    ctermbg=NONE cterm=NONE
hi StorageClass      ctermfg=7    ctermbg=NONE cterm=NONE
hi Structure         ctermfg=7    ctermbg=NONE cterm=NONE

" Types
hi Constant          ctermfg=7    ctermbg=NONE cterm=NONE
hi String            ctermfg=7    ctermbg=NONE cterm=NONE
hi StringDelimeter   ctermfg=7    ctermbg=NONE cterm=NONE
hi Character         ctermfg=7    ctermbg=NONE cterm=NONE
hi Number            ctermfg=7    ctermbg=NONE cterm=NONE
hi Boolean           ctermfg=7    ctermbg=NONE cterm=NONE
hi Float             ctermfg=7    ctermbg=NONE cterm=NONE
hi Identifier        ctermfg=7    ctermbg=NONE cterm=NONE
hi Function          ctermfg=7    ctermbg=NONE cterm=NONE

" -----------------------------------------------------------------------------
" visual aid
" -----------------------------------------------------------------------------
hi Visual                         ctermbg=0    cterm=reverse
hi VisualNOS         ctermfg=1    ctermbg=NONE cterm=NONE
hi MatchParen        ctermfg=7    ctermbg=NONE cterm=underline,bold,italic
hi NonText           ctermfg=16   ctermbg=NONE cterm=NONE
hi Error             ctermfg=0    ctermbg=1    cterm=NONE
hi ErrorMsg          ctermfg=1    ctermbg=NONE cterm=NONE
hi WarningMsg        ctermfg=0    ctermbg=1    cterm=NONE
hi Todo              ctermfg=0    ctermbg=2    cterm=NONE
hi Underlined        ctermfg=7    ctermbg=0    cterm=underline
hi Ignore            ctermfg=0    ctermbg=8    cterm=NONE
hi SpecialKey        ctermfg=0    ctermbg=8    cterm=NONE

" -----------------------------------------------------------------------------
" diff colors loaded from git
" -----------------------------------------------------------------------------
let s:git_added = system('git config --list | grep added | grep -o -E "[0-8]"')
let s:git_changed = system('git config --list | grep changed | grep -o -E "[0-8]"')
let s:git_untracked = system('git config --list | grep untracked | grep -o -E "[0-8]"')

exe 'hi DiffAdd      ctermfg=0    cterm=NONE   ctermbg=' . s:git_added
exe 'hi DiffChange   ctermfg=0    cterm=NONE   ctermbg=' . s:git_changed
exe 'hi DiffDelete   ctermfg=0    cterm=NONE   ctermbg=' . s:git_untracked

" -----------------------------------------------------------------------------
" search
" -----------------------------------------------------------------------------
hi Search            ctermfg=0    ctermbg=3    cterm=NONE
hi SearchInc         ctermfg=0    ctermbg=3    cterm=NONE
hi Directory         ctermfg=4    ctermbg=NONE cterm=NONE

" -----------------------------------------------------------------------------
" statusline and prompt 
" -----------------------------------------------------------------------------
hi StatusLine        ctermfg=8    ctermbg=0    cterm=NONE
hi StatusLineNC      ctermfg=16   ctermbg=0    cterm=NONE
hi WildMenu          ctermfg=3    ctermbg=0    cterm=NONE
hi Question          ctermfg=4    ctermbg=NONE cterm=NONE
hi Title             ctermfg=16   ctermbg=0    cterm=NONE
hi ModeMsg           ctermfg=4    ctermbg=NONE cterm=NONE
hi MoreMsg           ctermfg=2    ctermbg=NONE cterm=NONE

" -----------------------------------------------------------------------------
" window and tab
" -----------------------------------------------------------------------------
hi VertSplit         ctermfg=NONE ctermbg=NONE cterm=NONE
hi ColorColumn       ctermfg=NONE ctermbg=NONE cterm=NONE
hi EndOfBuffer       ctermfg=20   ctermbg=NONE cterm=NONE
hi TabLine           ctermfg=4    ctermbg=NONE cterm=NONE
hi TabLineFill       ctermfg=4    ctermbg=NONE cterm=NONE
hi TabLineSel        ctermfg=4    ctermbg=NONE cterm=NONE

" -----------------------------------------------------------------------------
" pmenu
" -----------------------------------------------------------------------------
hi Pmenu             ctermfg=7    ctermbg=16   cterm=NONE
hi PmenuSel          ctermfg=NONE ctermbg=3    cterm=NONE
hi PmenuSbar         ctermfg=NONE ctermbg=0    cterm=NONE
hi PmenuThumb        ctermfg=NONE ctermbg=4    cterm=NONE

" -----------------------------------------------------------------------------
" number column
" -----------------------------------------------------------------------------
hi Folded            ctermfg=8    ctermbg=NONE cterm=NONE
hi FoldColumn        ctermfg=20   ctermbg=NONE cterm=NONE
hi CursorColumn      ctermfg=8    ctermbg=NONE cterm=NONE
hi SignColumn        ctermfg=4    ctermbg=NONE cterm=NONE

" -----------------------------------------------------------------------------
" search
" -----------------------------------------------------------------------------
hi SpellBad          ctermfg=0    ctermbg=1    cterm=NONE
hi SpellCap          ctermfg=4    ctermbg=NONE cterm=underline
hi SpellLocal        ctermfg=5    ctermbg=NONE cterm=underline
hi SpellRare         ctermfg=6    ctermbg=NONE cterm=underline


" }}}
" =============================================================================
" extra scheme for plugins {{{
" =============================================================================

if 1

" -----------------------------------------------------------------------------
" dense-analysis/ale
" -----------------------------------------------------------------------------
hi ALEError                                    cterm=underline
hi ALEWarning                                  cterm=underline
  hi link ALEErrorSign                         Error
  hi link ALEWarningSign                       Search

" -----------------------------------------------------------------------------
" neoclide/coc.nvim
" -----------------------------------------------------------------------------
hi CocHighlightText               ctermbg=17

" -----------------------------------------------------------------------------
" junegunn/fzf.vim
" -----------------------------------------------------------------------------
hi default fzf1      ctermfg=0    ctermbg=3    guifg=NONE guibg=NONE
hi default fzf2      ctermfg=0    ctermbg=8    guifg=NONE guibg=NONE
hi default fzf3      ctermfg=0    ctermbg=8    guifg=NONE guibg=NONE

" -----------------------------------------------------------------------------
" preservim/nerdtree
" -----------------------------------------------------------------------------
hi NERDTreeDirSlash  ctermfg=4    ctermbg=NONE cterm=NONE
hi NERDTreeExecFile  ctermfg=7    ctermbg=NONE cterm=NONE
  hi link NERDTreeBookmarksLeader              NERDTreeDirSlash
  hi link NERDTreeGitStatusStaged              SignifySignAdd
  hi link NERDTreeGitStatusModified            SignifySignChange
  hi link NERDTreeGitStatusUntracked           SignifySignDelete
  hi link NERDTreeGitStatusRenamed             SignifySignDelete
  hi link NERDTreeGitStatusUnmerged            SignifySignDelete
  hi link NERDTreeGitStatusIgnored             SignifySignDelete

" -----------------------------------------------------------------------------
" mhinz/vim-signify
" -----------------------------------------------------------------------------
exe 'hi SignifySignAdd ctermbg=NONE cterm=NONE ctermfg=' . s:git_added
exe 'hi SignifySignChange ctermbg=NONE cterm=NONE ctermfg=' . s:git_changed
exe 'hi SignifySignDelete ctermbg=NONE cterm=NONE ctermfg=' . s:git_untracked

endif


" }}}
