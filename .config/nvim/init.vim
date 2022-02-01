if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd!
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

" ================= Functionalities ================= "
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"File Search:
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"File Browser:
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'mkitt/tabline.vim'
Plug 'ryanoasis/vim-devicons'
"Color:
Plug 'morhetz/gruvbox'
"Golang:
Plug 'fatih/vim-go'

"Snippets:
Plug 'ncm2/ncm2-ultisnips'
Plug 'SirVer/ultisnips'
"Git:
Plug 'tpope/vim-fugitive'

"airline:
Plug 'vim-airline/vim-airline'                          " airline status bar
Plug 'vim-airline/vim-airline-themes'                   " airline themes

"tsx:
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()





"COPY/PASTE:
"-----------
"Increases the memory limit from 50 lines to 1000 lines
:set viminfo='100,<1000,s10,h

" ================= Airline ==============================="
let g:airline_powerline_fonts = 1
let g:airline#themes#clean#palette = 1
call airline#parts#define_raw('linenr', '%l')
call airline#parts#define_accent('linenr', 'bold')
let g:airline_section_z = airline#section#create(['%3p%%  ',
            \ g:airline_symbols.linenr .' ', 'linenr', ':%c '])
let g:airline_section_warning = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'        " show only file name on tabs
let g:airline#extensions#ale#enabled = 1                " ALE integration
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'



"NUMBERING:
"----------
:set number

"INDENTATION:
"------------
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣


"Highlights code for multiple indents without reselecting
vnoremap < <gv
vnoremap > >gv

"COLOR:
"------
colorscheme gruvbox

"AUTO IMPORT:
"------------
let g:go_fmt_command = "goimports"

"AUTOCOMPLETE:
"-------------

"Press Enter to select item in autocomplete popup
inoremap <silent> <expr> <CR> (pumvisible() ? ncm2_ultisnips#expand_or("\<CR>", 'n') : "\<CR>")
"Cycle through completion entries with tab/shift+tab
inoremap <expr> <TAB> pumvisible() ? "\<c-n>" : "\<TAB>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<TAB>"
"Allow getting out of pop with Down/Up arrow keys
inoremap <expr> <down> pumvisible() ? "\<C-E>" : "\<down>"
inoremap <expr> <up> pumvisible() ? "\<C-E>" : "\<up>"

"SNIPPETS:
"---------
"Change default expand since TAB is used to cycle options
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"FILE SEARCH:
"------------
"allows FZF to open by pressing CTRL-F
map <C-p> :FZF<CR>
"allow FZF to search hidden 'dot' files
" let $FZF_DEFAULT_COMMAND = "find -L"

"FILE BROWSER:
"-------------
"allows NERDTree to open/close by typing 'n' then 't'

set autochdir


map nt :NERDTreeTabsToggle<CR>
"Start NERDtree when dir is selected (e.g. "vim .") and start NERDTreeTabs
let g:nerdtree_tabs_open_on_console_startup=2
"Add a close button in the upper right for tabs
let g:tablineclosebutton=1
"Automatically find and select currently opened file in NERDTree
let g:nerdtree_tabs_autofind=1
"Add folder icon to directories
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
"Hide expand/collapse arrows
let g:NERDTreeDirArrowExpandable = "\u00a0"
let g:NERDTreeDirArrowCollapsible = "\u00a0"
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:NERDTreeChDirMode = 2
highlight! link NERDTreeFlags NERDTreeDir

"SHORTCUTS:
"----------
"Open file at same line last closed
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif
endif

"SOURCING:
"---------
"Automatically reloads neovim configuration file on write (w)
autocmd! bufwritepost init.vim source %

"MOUSE:
"------
"Allow using mouse helpful for switching/resizing windows
set mouse+=a
if &term =~ '^screen'
  " tmux knows the extended mouse mode
  set ttymouse=xterm2
endif

"TEXT SEARCH:
"------------
"Makes Search Case Insensitive
set ignorecase

"SWAP:
"-----
set dir=~/.local/share/nvim/swap/

"GIT (FUGITIVE):
"---------------
map fgb :Gblame<CR>
map fgs :Gstatus<CR>
map fgl :Glog<CR>
map fgd :Gdiff<CR>
map fgc :Gcommit<CR>
map fga :Git add %:p<CR>

"SYNTAX HIGHLIGHTING:
"--------------------
syntax on

"HIGHLIGHTING:
"-------------
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" Highlight the current line the cursor is on
set cursorline


" " ======================== Custom Mappings ====================== "
" the essentials
let mapleader=","
nnoremap ; :
" nmap \ <leader>q
" map <F6> :Startify <CR>
" map <F4> :TagbarToggle<CR>
" nmap <leader>r :so ~/.config/nvim/init.vim<CR>
" nmap <leader>t :call TrimWhitespace()<CR>
" nmap <leader>q :bd<CR>
" nmap  <leader>f :FZF<CR>
" nmap <leader>b :Buffers<CR>
" nmap <leader>w :w<CR>
" nmap <leader>g :Goyo<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
" noremap <leader>e :PlugInstall<CR>
" noremap <C-q> :q<CR>
" inoremap jj <ESC>

" " use a different buffer for dd
nnoremap d "_d
vnoremap d "_d

" " emulate windows copy, cut behavior
" vnoremap <LeftRelease> "+y<LeftRelease>
" vnoremap <C-c> "+y<CR>,b
" vnoremap <C-x> "+d<CR>

" " switch between splits using ctrl + {h,j,k,l}
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
noremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" "" coc mappings

" " multi cursor shortcuts
" nmap <silent> <C-c> <Plug>(coc-cursors-position)
" nmap <silent> <C-a> <Plug>(coc-cursors-word)
" xmap <silent> <C-a> <Plug>(coc-cursors-range)

" " Use `[g` and `]g` to navigate diagnostics
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" " for global rename
" nmap <leader>rn <Plug>(coc-rename)

" " new line in normal mode and back
" map <Enter> o<ESC>
" map <S-Enter> O<ESC>

" " for project wide search
map <leader>/ :Ag<CR>


" Clear search highlight
nmap <esc><esc> :noh<return>
