call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-neco'
Plug 'tpope/vim-commentary'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'jparise/vim-graphql'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'chrisbra/colorizer'
Plug 'dylanaraps/wal.vim'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'flrnprz/plastic.vim'

" Python Plugin
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-python/python-syntax'

call plug#end()

filetype plugin on
syntax on
set dir=/home/masbossun/temp
set nocp
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set mouse=a
set number relativenumber
set hidden
set swapfile
set incsearch
set autoindent
set smartindent
set foldmethod=marker
set shell=/bin/zsh
set matchpairs+=<:>
set textwidth=80
set updatetime=100
set termguicolors
set background=dark
set statusline^=%{coc#status())}
set encoding=utf-8
set background=dark
colorscheme plastic

" set nowrap
" set signcolumn=yes
" set noruler
" set cmdheight=1
" set shortmess+=c
" set formatoptions=tcrq
" set laststatus=0
" set wildmenu
" set cursorline

hi CursorLine cterm=none
hi CursorLine gui=none
hi Comment cterm=italic
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

" Yank and Paste to clipboard
function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction


" KEYMAP
let mapleader="'"
nnoremap ; :
noremap <leader>w :w<CR>
noremap <leader>wq :wq<CR>
noremap <leader>q :q!<CR>

vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p
onoremap <silent> y y:call ClipboardYank()<cr>
onoremap <silent> d d:call ClipboardYank()<cr>

nnoremap <leader>pa :set nopaste!<CR>
nmap <leader>/ :Commentary<CR>
vmap <leader>/ :Commentary<CR>
nmap <silent>,n :NERDTreeFind<CR>
nmap <silent>,m :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <esc><esc> :noh<return>
nmap ff :Prettier<CR>
nmap FF :Format<CR>
nmap cc :ColorHighlight<CR>
" nmap <C-S> <Left> :vertical resize +5<CR>
" nmap <C-S> <Right> :vertical resize -5<CR>

nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-w>     :tabclose<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt
nnoremap <A-0> 10gt

" noremap <C-j> <C-w>j
" noremap <C-k> <C-w>k
" noremap <C-]> <C-w>]
" noremap <C-[> <C-w>[

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

imap ^[OA <ESC>ki
imap ^[OB <ESC>ji
imap ^[OC <ESC>li
imap ^[OD <ESC>hi


" NERDTree
let NERDTreeMinimalUI               = 1
let NERDTreeShowHidden              = 1
let NERDTreeIgnore                  = ['.git$', 'node_modules']
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" autocmd StdinReadPre * let s:std_in = 1

" gitgutter
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_sign_added                     = '+'
let g:gitgutter_sign_modified                  = '±'
let g:gitgutter_sign_removed                   = '-'
let g:gitgutter_sign_removed_first_line        = '×'
let g:gitgutter_sign_modified_removed          = '×'

" JSX PRETTY
let g:vim_jsx_pretty_highlight_close_tag = 1
let g:vim_jsx_pretty_colorful_config     = 1


" DART
let dart_format_on_save = 1
au BufRead,BufNewFile *.dart set filetype=dart
command! -nargs=0 Prettier :CocCommand prettier.formatFile


" COC
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
autocmd FileType json syntax match Comment +\/\/\+$+
autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <leader>rn <Plug>(coc-rename)
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
command! -nargs=0 Format :call CocAction('format')
command! -nargs=? Fold :call     CocAction('fold', <f-args>)


" STARTIFY
function! s:center(lines) abort
      let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
      let centered_lines = map(copy(a:lines),
            \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
      return centered_lines
    endfunction
let g:startify_files_number           = 18
let g:startify_session_persistence    = 1
let g:startify_lists = [
  \ { 'type': 'dir',       'header': ['   Recent files'] },
  \ { 'type': 'sessions',  'header': ['   Saved sessions'] },
  \ ]
let g:startify_custom_header = [
            \'                                __                                   ',
            \'       ____ ___   ____ _ _____ / /_   ____   _____ _____ __  __ ____ ',
            \'      / __ `__ \ / __ `// ___// __ \ / __ \ / ___// ___// / / // __ \',
            \'     / / / / / // /_/ /(__  )/ /_/ // /_/ /(__  )(__  )/ /_/ // / / /',
            \'    /_/ /_/ /_/ \__,_//____//_.___/ \____//____//____/ \__,_//_/ /_/ ',
  \ ]


" Using CocList
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>"


" markdown settings
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'google-chrome-stable'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {}
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" Vim Airline
" let g:airline_theme = "plastic"
" let g:airline_powerline_fonts=0
" let g:tmuxline_separators = {
"     \ 'left' : '',
"     \ 'left_alt': '',
"     \ 'right' : '',
"     \ 'right_alt' : '',
"     \ 'space' : ' '}

" Vim Lightline
let g:lightline = { 'colorscheme': 'plastic' }

" Vim Indentline
let g:indentLine_char = '•'


" Python Syntax
let g:python_highlight_all = 1
