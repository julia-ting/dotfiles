set nocompatible
set laststatus=2
set encoding=utf-8
set t_Co=256

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

"Setting up Vundle - the vim plugin bundler

let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
"Add your bundles here
Bundle 'Syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'https://github.com/tpope/vim-fugitive'

if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :BundleInstall
endif

