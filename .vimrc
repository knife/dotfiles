"no backup
set nobackup  
set nowritebackup
set noswapfile

set showtabline=2 "always show tabline
set nocompatible
filetype off

"turn off wraping lines
set textwidth=0 
set wrapmargin=0

"set cursorline "highlight current line

"Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" required! 
Plugin 'gmarik/Vundle.vim'

" My Bundles here:
"
" original repos on github

Plugin  'msanders/snipmate.vim'
Plugin  'scrooloose/nerdtree'
Plugin  'tpope/vim-cucumber'
Plugin  'tpope/vim-fugitive'
Plugin  'tpope/vim-git'
Plugin  'tpope/vim-haml'
Plugin  'tpope/vim-markdown'
Plugin  'tpope/vim-rails'
Plugin  'tpope/vim-repeat'
Plugin  'tpope/vim-surround'
Plugin  'tsaleh/vim-align'
Plugin  'tsaleh/vim-supertab'
Plugin  'tomtom/tcomment_vim'
Plugin  'vim-ruby/vim-ruby'
Plugin  'vim-scripts/L9'
Plugin  'kchmck/vim-coffee-script'
Plugin  'kien/ctrlp.vim.git'
Plugin  'mileszs/ack.vim'
Plugin  'knife/apidock.vim'
Plugin  'Townk/vim-autoclose'
Plugin  'scrooloose/syntastic'
Plugin  'ngmy/vim-rubocop'
Plugin 'janko-m/vim-test'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-endwise.git'
Plugin 'skwp/greplace.vim'
Bundle 'groenewege/vim-less'
Bundle 'rking/ag.vim'

" vim-scripts repos on github
Bundle 'IndexedSearch'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" CTRLP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode=0

set syntax=on
:se enc=utf8
"source $VIMRUNTIME\gvimrc_example.vim
"source $VIMRUNTIME\mswin.vim
"behave mswin

set tw=80
:se number
set autoindent
:set softtabstop=2 shiftwidth=2 expandtab

set list          " Display unprintable characters f12 - switches
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping

"caps lock maping
set <F13>=^[[25~

"let JSHintUpdateWriteOnly=1
"let g:JSHintHighlightErrorLine = 0

"vim-test
nmap <silent> <leader>j :TestNearest<CR>
nmap <silent> <leader>d :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

"splits
nmap <silent> <leader>s :split<CR>
nmap <silent> <leader>v :vsplit<CR>

"ctags
map tl <c-]>
map tk <c-t>

"search
map gr :grep <cword> *<CR>
map gr :grep <cword> %:p:h/*<CR>
map gR :grep \b<cword>\b *<CR>
map GR :grep \b<cword>\b %:p:h/*<CR>


" tab navigation like firefox 
:nmap tn :tabnew<cr>
:nmap tj :tabnext<cr>
:nmap th :tabprevious<cr>

" Map ctrl-movement keys to window switching
map fk <C-w><Up>
map fj <C-w><Down>
map fl <C-w><Right>
map fh <C-w><Left>

let g:ctrlp_map = ','
let g:ctrlp_cmd = 'CtrlP'

:nmap ; :Ag!<cr>
:nmap = :RuboCop<cr>

" ignore files
set wildignore+=*/bower_components/*     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\bower_components$'

"let mapleader=" "
"nnoremap <Leader>q :q<CR>
"nnoremap <Leader>w :w<CR>
"nnoremap <Leader>e :e
"nnoremap <Leader>v :vsplit
"nnoremap <Leader>s :split
"nnoremap <Leader>g :vimgrep
"nnoremap <Leader>c :copen<CR>
"nnoremap <Leader>C :cclose<CR>

noremap <space> :

"supertab map
inoremap <expr> <Space> pumvisible() ? "\<C-y>" : " "

"cp - change element with contents of buffer
nmap <silent> cp "_cw<C-R>"<Esc>


"autocomplete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"clojure
"let clj_highlight_builtins = 1
"let clj_paren_rainbow = 1

"let g:SuperTabDefaultCompletionType = "context"

" nerd tree
nmap tt :NERDTreeToggle<cr>
" show hidden files
" let NERDTreeShowHidden=1


" fuzzy finder
nmap ff :FufCoverageFile **/<CR>
nmap bb :FufBuffer **/<CR>

" Cucumber
au Bufread,BufNewFile *.feature set filetype=gherkin
au! Syntax gherkin source ~/.vim/cucumber.vim

" Syntastic
" let g:syntastic_javascript_checkers = ['jshint']
"  let g:syntastic_ruby_checkers = ['mri', 'rubocop']
"  let g:syntastic_ruby_rubocop_exec = '/home/knife/.rvm/gems/ruby-2.1.2/bin/rubocop'
"  let g:syntastic_enable_signs=1
"  let g:syntastic_auto_loc_list=1
"
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

set guifont=Monaco
syntax on

" darkblue -- for those who prefer dark background
" [note: looks bit uglier with come terminal palettes,
" but is fine on default linux console palette.]

set bg=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "darkblue"

hi Normal         guifg=#c0c0c0 guibg=#000040 ctermfg=gray ctermbg=black
hi ErrorMsg       guifg=#ffffff guibg=#287eff ctermfg=white ctermbg=lightblue
hi Visual         guifg=#8080ff guibg=fg  gui=reverse ctermfg=lightblue ctermbg=fg cterm=reverse
hi VisualNOS      guifg=#8080ff guibg=fg gui=reverse,underline   ctermfg=lightblue ctermbg=fg cterm=reverse,underline
hi Todo           guifg=#d14a14 guibg=#1248d1 ctermfg=red     ctermbg=darkblue
hi Search         guifg=#90fff0 guibg=#2050d0 ctermfg=white ctermbg=darkblue cterm=underline term=underline
hi IncSearch      guifg=#b0ffff guibg=#2050d0 ctermfg=darkblue ctermbg=gray

hi SpecialKey     guifg=cyan ctermfg=darkcyan
hi Directory      guifg=cyan ctermfg=cyan
hi Title          guifg=magenta gui=none ctermfg=magenta cterm=bold
hi WarningMsg     guifg=red ctermfg=red
hi WildMenu       guifg=yellow guibg=black ctermfg=yellow ctermbg=black cterm=none term=none
hi ModeMsg        guifg=#22cce2 ctermfg=lightblue
hi MoreMsg        ctermfg=darkgreen ctermfg=darkgreen
hi Question       guifg=green gui=none ctermfg=green cterm=none
hi NonText        guifg=#0030ff ctermfg=darkblue

hi StatusLine     guifg=blue guibg=darkgray gui=none              ctermfg=blue ctermbg=gray term=none cterm=none
hi StatusLineNC   guifg=black guibg=darkgray gui=none             ctermfg=black ctermbg=gray term=none cterm=none
hi VertSplit      guifg=black guibg=darkgray gui=none             ctermfg=black ctermbg=gray term=none cterm=none

hi Folded         guifg=#808080 guibg=#000040                     ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi FoldColumn     guifg=#808080 guibg=#000040                     ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi LineNr         guifg=#90f020                   ctermfg=green cterm=none

hi DiffAdd        guibg=darkblue  ctermbg=darkblue term=none cterm=none
hi DiffChange     guibg=darkmagenta ctermbg=magenta cterm=none
hi DiffDelete     ctermfg=blue ctermbg=cyan gui=bold guifg=Blue guibg=DarkCyan
hi DiffText       cterm=bold ctermbg=red gui=bold guibg=Red

hi Cursor         guifg=#000020 guibg=#ffaf38 ctermfg=bg ctermbg=brown
hi lCursor        guifg=#ffffff guibg=#000000 ctermfg=bg ctermbg=darkgreen


hi Comment        guifg=#80a0ff ctermfg=darkred
hi Constant       ctermfg=magenta guifg=#ffa0a0 cterm=none
hi Special        ctermfg=brown guifg=Orange cterm=none gui=none
hi Identifier     ctermfg=cyan guifg=#40ffff cterm=none
hi Statement      ctermfg=yellow cterm=none guifg=#ffff60 gui=none
hi PreProc        ctermfg=magenta guifg=#ff80ff gui=none cterm=none
hi type           ctermfg=green guifg=#60ff60 gui=none cterm=none
hi Underlined     cterm=underline term=underline
hi Ignore         guifg=bg ctermfg=bg

" suggested by tigmoid, 2008 Jul 18
hi Pmenu guifg=#c0c0c0 guibg=#404080
hi PmenuSel guifg=#c0c0c0 guibg=#2050d0
hi PmenuSbar guifg=blue guibg=darkgray
hi PmenuThumb guifg=#c0c0c0
