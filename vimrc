set nocompatible

syntax on
filetype indent on
filetype plugin on

set expandtab
"allow backspacing over everything in insert mode

set backspace=indent,eol,start
set ruler "show curent position at all times
set showcmd
set number " autocmds autcmd FileType python set expandtab tabstop=4 shiftwidth=4

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow


set autoindent
set cindent

set tabstop=2
set softtabstop=2
set shiftwidth=2

set showmatch " parenthesis matching

if has ('mouse')
  set mouse=a
endif


hi Constant ctermfg=cyan cterm=none  guifg= #ffffff
hi Statement ctermfg=white cterm=bold guifg= #0087ff
hi Error ctermfg=red cterm=none guifg= #ffffff
hi Comment ctermfg=white cterm=none guifg= #FFFFFF
hi Special ctermfg=blue cterm=none guifg= #FFFFFF
hi Identifier ctermfg=green cterm=bold guifg= #ffffff
hi Type ctermfg=cyan cterm=bold  guifg= #ffffff
hi PreProc ctermfg=red cterm=none
hi Underlined ctermfg=yellow cterm=bold
hi LineNr ctermfg=cyan cterm=none
hi Visual ctermbg=green ctermfg=white

