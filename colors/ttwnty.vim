" ttwnty.vim
" https://github.com/p1xelHer0/ttwnty.vim

hi clear
set background=dark

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'ttwnty'

" =============================================================================
" Default scheme {{{
" =============================================================================

" -----------------------------------------------------------------------------
" Editor
" -----------------------------------------------------------------------------
hi Normal            ctermfg=7    ctermbg=NONE cterm=NONE
hi CursorLine        ctermfg=NONE ctermbg=16   cterm=NONE
hi CursorLineNr      ctermfg=20   ctermbg=0    cterm=bold
hi LineNr            ctermfg=18   ctermbg=0    cterm=NONE
hi TermCursorNC      ctermfg=0    ctermbg=3    cterm=NONE

" -----------------------------------------------------------------------------
" Language constructs
" -----------------------------------------------------------------------------
hi Statement         ctermfg=7    ctermbg=NONE cterm=NONE
hi Conditional       ctermfg=7    ctermbg=NONE cterm=NONE
hi Repeat            ctermfg=7    ctermbg=NONE cterm=NONE
hi Label             ctermfg=7    ctermbg=NONE cterm=NONE
hi Operator          ctermfg=7    ctermbg=NONE cterm=NONE
hi Keyword           ctermfg=7    ctermbg=NONE cterm=NONE
hi Exception         ctermfg=7    ctermbg=NONE cterm=NONE
hi Comment           ctermfg=8    ctermbg=NONE cterm=NONE
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
hi String            ctermfg=2    ctermbg=NONE cterm=NONE
hi StringDelimeter   ctermfg=2    ctermbg=NONE cterm=NONE
hi Character         ctermfg=2    ctermbg=NONE cterm=NONE
hi Number            ctermfg=3    ctermbg=NONE cterm=NONE
hi Boolean           ctermfg=3    ctermbg=NONE cterm=NONE
hi Float             ctermfg=3    ctermbg=NONE cterm=NONE
hi Identifier        ctermfg=7    ctermbg=NONE cterm=NONE
hi Function          ctermfg=7    ctermbg=NONE cterm=NONE

" -----------------------------------------------------------------------------
" Visual aid
" -----------------------------------------------------------------------------
hi Visual                         ctermbg=0    cterm=reverse
hi VisualNOS         ctermfg=1    ctermbg=NONE cterm=NONE
hi MatchParen        ctermfg=7    ctermbg=NONE cterm=underline,bold,italic
hi NonText           ctermfg=18   ctermbg=NONE cterm=NONE
hi Error             ctermfg=0    ctermbg=1    cterm=NONE
hi ErrorMsg          ctermfg=1    ctermbg=NONE cterm=NONE
hi WarningMsg        ctermfg=3    ctermbg=NONE cterm=NONE
hi Todo              ctermfg=0    ctermbg=7    cterm=NONE
hi Underlined        ctermfg=7    ctermbg=0    cterm=underline
hi Ignore            ctermfg=0    ctermbg=8    cterm=NONE
hi SpecialKey        ctermfg=0    ctermbg=8    cterm=NONE

" -----------------------------------------------------------------------------
" Diff/Git colors
" -----------------------------------------------------------------------------
hi DiffAdd            ctermfg=0    ctermbg=2    cterm=NONE
hi DiffChange         ctermfg=0    ctermbg=3    cterm=NONE
hi DiffDelete         ctermfg=0    ctermbg=1    cterm=NONE
hi DiffText           ctermfg=2    ctermbg=0    cterm=bold

hi GitAdd             ctermfg=2    ctermbg=NONE cterm=NONE
hi GitDelete          ctermfg=1    ctermbg=NONE cterm=NONE
hi GitChange          ctermfg=3    ctermbg=NONE cterm=NONE
hi GitNew             ctermfg=4    ctermbg=NONE cterm=NONE

  hi! li GitSignsAdd               GitAdd
  hi! li GitSignsChange            GitChange
  hi! li GitSignsDelete            GitDelete

  hi! li NvimTreeGitDirty          GitChange
  hi! li NvimTreeGitStaged         GitNew
  hi! li NvimTreeGitMerge          GitDelete
  hi! li NvimTreeGitRenamed        GitAdd
  hi! li NvimTreeGitNew            GitAdd
  hi! li NvimTreeGitDeleted        GitDelete

" -----------------------------------------------------------------------------
" Search
" -----------------------------------------------------------------------------
hi Search            ctermfg=0    ctermbg=3    cterm=NONE
hi SearchInc         ctermfg=0    ctermbg=7    cterm=NONE
hi Directory         ctermfg=3    ctermbg=NONE cterm=NONE

" -----------------------------------------------------------------------------
" Statusline and prompt 
" -----------------------------------------------------------------------------
hi StatusLine        ctermfg=8    ctermbg=0    cterm=NONE
hi StatusLineNC      ctermfg=20   ctermbg=0    cterm=NONE
hi WildMenu          ctermfg=2    ctermbg=0    cterm=NONE
hi Question          ctermfg=2    ctermbg=NONE cterm=NONE
hi Title             ctermfg=0    ctermbg=NONE cterm=bold
hi ModeMsg           ctermfg=2    ctermbg=NONE cterm=NONE
hi MoreMsg           ctermfg=2    ctermbg=NONE cterm=NONE

" -----------------------------------------------------------------------------
" Window and tab
" -----------------------------------------------------------------------------
hi VertSplit         ctermfg=NONE ctermbg=NONE cterm=NONE
hi ColorColumn       ctermfg=NONE ctermbg=NONE cterm=NONE
hi EndOfBuffer       ctermfg=17   ctermbg=NONE cterm=NONE
hi TabLine           ctermfg=2    ctermbg=18   cterm=NONE
hi TabLineFill       ctermfg=2    ctermbg=NONE cterm=NONE
hi TabLineSel        ctermfg=0    ctermbg=2    cterm=NONE

" -----------------------------------------------------------------------------
" Pmenu
" -----------------------------------------------------------------------------
hi Pmenu             ctermfg=7    ctermbg=16   cterm=NONE
hi PmenuSbar         ctermfg=NONE ctermbg=18   cterm=NONE
hi PmenuThumb        ctermfg=NONE ctermbg=8    cterm=NONE
hi PmenuSel          ctermfg=7    ctermbg=18   cterm=NONE


" -----------------------------------------------------------------------------
" Number column
" -----------------------------------------------------------------------------
hi Folded            ctermfg=8    ctermbg=NONE cterm=NONE
hi FoldColumn        ctermfg=20   ctermbg=NONE cterm=NONE
hi CursorColumn      ctermfg=8    ctermbg=NONE cterm=NONE
hi SignColumn        ctermfg=3    ctermbg=NONE cterm=NONE

" -----------------------------------------------------------------------------
" Search
" -----------------------------------------------------------------------------
hi SpellBad          ctermfg=0    ctermbg=1    cterm=NONE
hi SpellCap          ctermfg=1    ctermbg=NONE cterm=underline
hi SpellLocal        ctermfg=1    ctermbg=NONE cterm=underline
hi SpellRare         ctermfg=1    ctermbg=NONE cterm=underline

" -----------------------------------------------------------------------------
" LSP
" -----------------------------------------------------------------------------
hi LspDiagnosticsDefaultHint          ctermfg=2    ctermbg=NONE cterm=NONE 
hi LspDiagnosticsDefaultError         ctermfg=1    ctermbg=NONE cterm=NONE 
hi LspDiagnosticsDefaultWarning       ctermfg=3    ctermbg=NONE cterm=NONE 
hi LspDiagnosticsDefaultInformation   ctermfg=8    ctermbg=NONE cterm=NONE 
hi LspDiagnosticsUnderlineError       ctermfg=1    ctermbg=NONE cterm=underline 
hi LspDiagnosticsUnderlineWarning     ctermfg=3    ctermbg=NONE cterm=underline 
hi LspDiagnosticsUnderlineInformation ctermfg=8    ctermbg=NONE cterm=underline 
hi LspDiagnosticsUnderlineHint        ctermfg=2    ctermbg=NONE cterm=underline 
" -----------------------------------------------------------------------------
" Other
" -----------------------------------------------------------------------------
  hi! li NvimInternalError          Error


" }}}
" =============================================================================
" extra scheme for plugins {{{
" =============================================================================
" -----------------------------------------------------------------------------
" telescope.nvim/telescope
" -----------------------------------------------------------------------------
hi TelescopeNormal         ctermfg=7    ctermbg=0    cterm=NONE
hi TelescopeBorder         ctermfg=7    ctermbg=16   cterm=NONE
hi TelescopeTitle          ctermfg=8    ctermbg=16   cterm=NONE
hi TelescopePromptPrefix   ctermfg=2    ctermbg=16   cterm=NONE
hi TelescopeSelection      ctermfg=7    ctermbg=NONE cterm=NONE
hi TelescopeSelectionCaret ctermfg=2    ctermbg=18   cterm=NONE
hi TelescopeResultsLineNr  ctermfg=8    ctermbg=1    cterm=NONE
  hi! li TelescopeMatching              Search
  hi! li TelescopeSelection             PmenuSel

" -----------------------------------------------------------------------------
" kyazdani42/nvim-tree.lua
" -----------------------------------------------------------------------------
" hi NvimTreeFolderName       ctermfg=8    ctermbg=NONE cterm=NONE
" hi NvimTreeOpenedFolderName ctermfg=8    ctermbg=NONE cterm=NONE
hi NvimTreeEmptyFolderName  ctermfg=8    ctermbg=NONE cterm=NONE
" hi NvimTreeFolderIcon       ctermfg=8    ctermbg=NONE cterm=NONE


" }}}

