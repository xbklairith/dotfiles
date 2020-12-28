call plug#begin('~/.vim/plugged')


"  ================GUI AND look stuff  =============== "
" Plug 'vim-airline/vim-airline'                          " airline status bar
" Plug 'vim-airline/vim-airline-themes'                   " airline themes
" Plug 'ryanoasis/vim-devicons'                           " pretty icons everywhere
" Plug 'chriskempson/base16-vim'

" Plug 'luochen1990/rainbow'                              " rainbow paranthesis
" Plug 'hzchirs/vim-material'                             " material color themes
" Plug 'junegunn/goyo.vim'                                " zen mode
" Plug 'gregsexton/MatchTag'                              " highlight matching html tags
" Plug 'dracula/vim'  
" Plug 'Yggdroot/indentLine'                              " Show indent line
" ================= Functionalities ================= "
" Plug 'mhinz/vim-startify'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Plug 'tpope/vim-fugitive'

" syntax check
" Plug 'w0rp/ale'
" Autocomplete
"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'

"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'
"Plug 'ncm2/ncm2-jedi'
  " Formater
" Plug 'Chiel92/vim-autoformat'

" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}


call plug#end()

" ==================== general config ======================== "
set number                                              " show lines number on the left
filetype plugin indent on                               " enable indentations
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent            " tab key actions
set incsearch ignorecase smartcase hlsearch             " highlight text while searching
set list listchars=trail:»,tab:»-                       " use tab to navigate in list mode
set fillchars+=vert:\▏                                  " requires a patched nerd font (try furaCode)
set wrap breakindent                                    " wrap long lines to the width sset by tw
set encoding=utf-8                                      " text encoding
set number                                              " enable numbers on the left
set title                                               " tab title as file file
set conceallevel=2                                      " set this so we womt break indentation plugin
set splitright                                          " open vertical split to the right
set splitbelow                                          " open horizontal split to the bottom
" set tw=80                                               " auto wrap lines that are longer than that
set emoji                                               " enable emojis
let g:indentLine_setConceal = 0                         " actually fix the annoying markdown links conversion
au BufEnter * set fo-=c fo-=r fo-=o                     " stop annying auto commenting on new lines
set undofile                                            " enable persistent undo
set undodir=~/.nvim/tmp                                 " undo temp file directory
set nofoldenable                                        " disable folding
set cursorline


set termguicolors                                       " Opaque Background
set mouse=a                                             " enable mouse scrolling
set clipboard+=unnamedplus                              " use system clipboard by default
set autoread                                            " Reload file when change detected

" performance tweaks
set nocursorline
set nocursorcolumn
set scrolljump=5
set lazyredraw
set synmaxcol=180
set re=1

" required by coc
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes


" ==================== Color ======================== "
syntax on
" color dracula
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

" Opaque Background (Comment out to use terminal's profile)
set termguicolors

" Transparent Background (For i3 and compton)
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE





" colorscheme vim-material
" let g:airline_theme='material'
" highlight Pmenu guibg='00010a' guifg=white              " popup menu colors
" highlight Comment gui=bold                              " bold comments
" highlight Normal gui=none
" highlight NonText guibg=none
" highlight clear SignColumn                              " use number color for sign colum color
" hi Search guibg=orange                                  " search string highlight color
" autocmd ColorScheme * highlight VertSplit cterm=NONE    " split color
" hi NonText guifg=bg                                     " mask ~ on empty lines
" hi clear CursorLineNr                                   " use the theme color for relative number
" hi CursorLineNr gui=bold                                " make relative number bold

" colors for git (especially the gutter)
hi DiffAdd guibg='#0f111a'
hi DiffChange guibg='#0f111a'

" coc multi cursor highlight color
hi CocCursorRange guibg=#b16286 guifg=#ebdbb2


" ===================== fzf configuration ======================== "
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Type'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Character'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


" augroup NCM2
"   autocmd!
"   " enable ncm2 for all buffers
"   " autocmd BufEnter * call ncm2#enable_for_buffer()
"   " :help Ncm2PopupOpen for more information
"   set completeopt=noinsert,menuone,noselect
"   " When the <Enter> key is pressed while the popup menu is visible, it only
"   " hides the menu. Use this mapping to close the menu and also start a new line.
"   inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
"   " uncomment this block if you use vimtex for LaTex
"   " autocmd Filetype tex call ncm2#register_source({
"   "           \ 'name': 'vimtex',
"   "           \ 'priority': 8,
"   "           \ 'scope': ['tex'],
"   "           \ 'mark': 'tex',
"   "           \ 'word_pattern': '\w+',
"   "           \ 'complete_pattern': g:vimtex#re#ncm2,
"   "           \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
"   "           \ })
" augroup END


" " Ale
" let g:ale_lint_on_enter = 0
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_linters = {'python': ['flake8']}




" " ================= Airline ==============================="
" let g:airline_powerline_fonts = 1
" let g:airline#themes#clean#palette = 1
" call airline#parts#define_raw('linenr', '%l')
" call airline#parts#define_accent('linenr', 'bold')
" let g:airline_section_z = airline#section#create(['%3p%%  ',
"             \ g:airline_symbols.linenr .' ', 'linenr', ':%c '])
" let g:airline_section_warning = ''
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ':t'        " show only file name on tabs
" let g:airline#extensions#ale#enabled = 1                " ALE integration
" let airline#extensions#ale#error_symbol = 'E:'
" let airline#extensions#ale#warning_symbol = 'W:'



" ================= COC ==============================="
" use tab for completion trigger
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Navigate snippet placeholders using tab
let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

" Use enter to accept snippet expansion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" list of the extensions required
let g:coc_global_extensions = [
            \'coc-yank',  
            \'coc-pairs',
            \'coc-json',
            \'coc-css',
            \'coc-html',
            \'coc-tsserver',
            \'coc-yaml',
            \'coc-lists',
            \'coc-snippets',
            \'coc-ultisnips',
            \'coc-python',
            \'coc-xml',
            \'coc-syntax',
            \]



" rainbow brackets
let g:rainbow_active = 1

" tagbar
let g:tagbar_autofocus = 1


" " ======================== Indent ============================== "
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" " ======================== Custom function ======================"
" " tabs manipulation
" function! Rotate() " switch between horizontal and vertical split mode for open splits
"     " save the original position, jump to the first window
"     let initial = winnr()
"     exe 1 . "wincmd w"

"     wincmd l
"     if winnr() != 1
"         " succeeded moving to the right window
"         wincmd J                " make it the bot window
"     else
"         " cannot move to the right, so we are at the top
"         wincmd H                " make it the left window
"     endif

"     " restore cursor to the initial window
"     exe initial . "wincmd w"
" endfunction

" nnoremap <F5> :call Rotate()<CR>

" "Hfile for listing hidden file"
" command! -bang -nargs=? -complete=dir HFiles
"   \ call fzf#vim#files(<q-args>, {'source': 'ag --hidden --ignore .git -g ""'}, <bang>0)

" " fzf with file icons and previews
" if executable('rg')
"   let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
"   set grepprg=rg\ --vimgrep
"   command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
" endif

" " Files + devicons
" function! Fzf_dev()
"   let l:fzf_files_options = '--preview "bat --theme="OneHalfDark" --style=numbers,changes --color always {2..-1} | head -'.&lines.'"'
"   function! s:files()
"     let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
"     return s:prepend_icon(l:files)
"   endfunction

"   function! s:prepend_icon(candidates)
"     let l:result = []
"     for l:candidate in a:candidates
"       let l:filename = fnamemodify(l:candidate, ':p:t')
"       let l:icon = WebDevIconsGetFileTypeSymbol(l:filename, isdirectory(l:filename))
"       call add(l:result, printf('%s %s', l:icon, l:candidate))
"     endfor

"     return l:result
"   endfunction

"   function! s:edit_file(item)
"     let l:pos = stridx(a:item, ' ')
"     let l:file_path = a:item[pos+1:-1]
"     execute 'silent e' l:file_path
"   endfunction

"   call fzf#run({
"         \ 'source': <sid>files(),
"         \ 'sink':   function('s:edit_file'),
"         \ 'options': '-m ' . l:fzf_files_options,
"         \ 'down':    '40%' })
" endfunction


" ======================== Custom Mappings ====================== "
" the essentials
let mapleader=","
nnoremap ; :
nmap \ <leader>q
map <F6> :Startify <CR>
map <F4> :TagbarToggle<CR>
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
nmap <leader>t :call TrimWhitespace()<CR>
nmap <leader>q :bd<CR>
nmap  <leader>f :FZF<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>w :w<CR>
nmap <leader>g :Goyo<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
noremap <leader>e :PlugInstall<CR>
noremap <C-q> :q<CR>
inoremap jj <ESC>

" use a different buffer for dd
nnoremap d "_d
vnoremap d "_d

" emulate windows copy, cut behavior
vnoremap <LeftRelease> "+y<LeftRelease>
vnoremap <C-c> "+y<CR>,b
vnoremap <C-x> "+d<CR>

" switch between splits using ctrl + {h,j,k,l}
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

"" coc mappings

" multi cursor shortcuts
nmap <silent> <C-c> <Plug>(coc-cursors-position)
nmap <silent> <C-a> <Plug>(coc-cursors-word)
xmap <silent> <C-a> <Plug>(coc-cursors-range)

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" for global rename
nmap <leader>rn <Plug>(coc-rename)

" new line in normal mode and back
map <Enter> o<ESC>
map <S-Enter> O<ESC>

" for project wide search
map <leader>/ :Ag<CR>


" Clear search highlight
nmap <esc><esc> :noh<return>
