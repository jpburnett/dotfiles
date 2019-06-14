syntax enable           " enable syntax processing
set number              " show line numbers

" ============ COLOR SCHEME ====================
" set color scheme
colorscheme koehler


" =========== TABS AND SPACES =================
" set custom tab width
set shiftwidth=4
set softtabstop=4	 " Number of spaces in tab when editing
set tabstop=4 	" Number of visual spaces per tab 
set expandtab	" Tabs are spaces

call plug#begin('~/.vim/plugged') 
Plug 'fatih/vim-go'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'zeekay/vim-beautify'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'othree/eregex.vim'
Plug 'tpope/vim-surround'

call plug#end()

if !exists("g:ycm_semantic_triggers")
      let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers['typescript'] = ['.']

set number
set t_Co=256

let g:go_fmt_command = "goimports"

command! GD GoDef
command! NT NERDTreeToggle
set nofoldenable    " disable folding

command! BEA %!python -m json.tool


function! NumberToggle()
      if(&relativenumber == 1)
        set number
      else
        set relativenumber
      endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
inoremap ieee<space> <C-o>:GoIfErr<CR>

:call NumberToggle()
set pastetoggle=<F2>

let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

hi javaRepeat ctermfg = green
hi javaType ctermfg = green
hi javaStorageClass ctermfg = green cterm=bold
hi javaDocTags ctermfg = green
hi Conditional ctermfg = green
hi LineNr ctermfg = red
hi Comment ctermfg = magenta
hi Statement ctermfg = blue
hi Function ctermfg = blue
hi Identifier ctermfg = blue
hi Exception ctermfg = green
hi Special ctermfg = green
hi String ctermfg = yellow
hi MatchParen ctermbg=none cterm=underline ctermfg=magenta

highlight Visual ctermfg = gray
