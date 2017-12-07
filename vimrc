".vimrc
" => SidoShiro <=
"
" Runtimes
execute pathogen#infect('~/.vim/bundle/{}')

" Basic Opts
set nu            " set line number
set hlsearch      "set searcher within file
set incsearch     "set searcher *
set encoding=utf8 "file encoding set to UTF-8
set textwidth=80  "wrap text to 80 column
set wrapmargin=1
set ruler         " show current pos
set cursorline    " highlight the line occupied by the cursor


" set spelling know english
set spell

" Indenting and Tabulation
set autoindent    "set autoindent
set smartindent   "set smartindent
set cindent
set expandtab
set shiftwidth=2  "set tab = 2 space
"set tabstop=2     " NEED DOC
set softtabstop=2 " set softtab = 2 space
set showmatch     " Brackets matching highlight

" Colors and Syntax
syntax on         "set syntax on
" syntax enable     "enable syntax
set background=dark
"set foldcolumn=1  " NEED DOC
set colorcolumn=80 "Use to see column 80(in red) during coding

" colorscheme
" colorscheme hickop
" colorscheme deep-space
colors deus
" colors gruvbox
" colors carbonized-dark
" colorscheme Tomorrow-Night-Eighties
" colorscheme base16-eighties
" colorscheme chlordane
" colorscheme onedark

" 80 column indicator , setted on 81
highlight OverError ctermbg=red ctermfg=white guibg=#592929
match OverError /\s\+$\|\ if(\|\ for(\|\ while(\|\%81v.\+/

" Complexe !!! NEED DOC
filetype indent plugin on
set modeline
set showcmd
set lazyredraw
set showmatch
set wrap "Wrap lines
set magic "little marging

" Autoload Loads to speed up work
autocmd bufnewfile *.sh source ~/layout/shelltxt.txt
autocmd bufnewfile *.c source ~/layout/ctxt.txt
autocmd bufnewfile Makefile source ~/layout/mk.txt
autocmd bufnewfile README source ~/layout/README.txt
autocmd bufnewfile *.h source ~/layout/htxt.txt
autocmd vimenter * NERDTree

" Set Nerdtree size
let g:NERDTreeWinSize=15

" KEY MAPs
map <F2> :NERDTreeToggle<CR>
map <F3> :SyntasticReset<CR>

" Synstastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_loc_list_height=5

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
