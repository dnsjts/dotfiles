set shell=/bin/bash
set rtp+=/usr/share/nvim/runtime/

filetype off

call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'sjl/badwolf'
Plug 'shougo/echodoc.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh', }
"Plug 'dense-analysis/ale'
Plug 'valloric/listtoggle'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'scrooloose/nerdtree'
Plug 'roxma/nvim-yarp'
Plug 'rust-lang/rust.vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'sheerun/vim-polyglot'
Plug 'nelstrom/vimprint'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'majutsushi/tagbar'

Plug 'arcticicestudio/nord-vim'

Plug 'luochen1990/rainbow'

call plug#end()

autocmd BufEnter * call ncm2#enable_for_buffer()
autocmd BufEnter * SemanticHighlight

"set completefunc=LanguageClient#complete
set completeopt=noinsert,menuone,noselect
set formatexpr=LanguageClient#textDocument_rangeFormatting_sync
"set omnifunc=LanguageClient#complete

"let g:deoplete#enable_at_startup = 1

inoremap <silent><expr> <c-space> coc#refresh()

let g:SuperTabDefaultCompletionType = "context"

set hidden

let mapleader = " "

let g:rust_recommended_style = 0
let g:rainbow_active = 1

let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

let g:airline#extensions#tabline#enabled      = 1
let g:airline#extensions#tabline#left_sep     = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

autocmd CursorHold * silent call CocActionAsync('highlight')

map <C-n>              :NERDTreeToggle<CR>
map <Leader>C          :Commands<CR>
map <Leader>F          :Files<CR>
map <Leader>f          :GFiles<CR>
map <Leader>h          :History<CR>
map <Leader>L          :Lines<CR>
map <Leader>M          :Maps<CR>
map <Leader>:          :History:<CR>
map <Leader>/          :History/<CR>
nnoremap <F5>          :call LanguageClient_contextMenu()<CR>
nmap <F2> <Plug>(coc-rename)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nnoremap <silent> Q    :call LanguageClient_textDocument_formatting()<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

filetype plugin indent on     " required!

set autoindent
set autoread
set background=light
set cmdheight=1
set colorcolumn=101
set copyindent
set cursorcolumn
set cursorline
set expandtab
set fileformats=unix,dos,mac
set foldmethod=syntax
set formatoptions=tc1
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set linebreak
set list!
set listchars=tab:>-,trail:$,space:·
set matchtime=2
set modeline
set mouse=a
set nobackup
set noerrorbells
set noswapfile
set novisualbell
set number
set preserveindent
set ruler
set scrolloff=9999
set shiftwidth=4
set shortmess+=c
set showcmd
set showmatch
set showmode
set signcolumn=yes
set smartindent
set smarttab
set spell
set tabstop=4
set termguicolors
set textwidth=100
set wildmenu
set wildmode=longest:full,list:full
set wrap

syntax      enable
"colorscheme badwolf
colorscheme nord
