"*****************************************************************************
"" Vim-PLug core
"*****************************************************************************
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

if !filereadable(vimplug_exists)
    if !executable("curl")
        echoerr "You have to install curl or first install vim-plug yourself!"
        execute "q!"
    endif
    echo "Installing Vim-Plug..."
    echo ""
    silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    let g:not_finish_vimplug = "yes"

    autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.config/nvim/plugged'))

"*****************************************************************************
"" PLug install packages
"*****************************************************************************
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim' | Plug 'Shougo/neosnippet-snippets'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' } "https://tabnine.com/
Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'ap/vim-css-color'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tjammer/blayu.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
"Plug 'davidgranstrom/nvim-markdown-preview'
Plug 'severin-lemaignan/vim-minimap'
Plug 'airblade/vim-gitgutter'
Plug 'chiel92/vim-autoformat'
Plug 'Yggdroot/indentLine'
Plug 'shougo/denite.nvim'
Plug 'ryanoasis/vim-devicons'

call plug#end()

"NERDTree config
nmap <C-o> :NERDTreeToggle<CR>

" Use deoplete.
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'  
let g:deoplete#enable_at_startup = 1
"Use smartcase
let g:deoplete#enable_smart_case = 1
"Set minimum syntax keyword length.
let g:deoplete#sources#syntax#min_keyword_length = 2

"Emmet config
let g:user_emmet_leader_key=','

"Autopairs config
let g:AutoPairsFlyMode = 1

"vim css color config
let g:cssColorVimDoNotMessMyUpdatetime = 1

"vim minimap config
let g:minimap_highlight='visual'
let g:minimap_show='<leader>ms'
let g:minmap_close='<leader>mc'
let g:minimap_update='<leader>mu'
let g:minimap_toggle='<leader>mt'

"Autoformat config
noremap <F3> :Autoformat<CR>

"Denite config
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
    nnoremap <silent><buffer><expr> <CR>
                \ denite#do_map('do_action')
    nnoremap <silent><buffer><expr> d
                \ denite#do_map('do_action', 'delete')
    nnoremap <silent><buffer><expr> p
                \ denite#do_map('do_action', 'preview')
    nnoremap <silent><buffer><expr> q
                \ denite#do_map('quit')
    nnoremap <silent><buffer><expr> i
                \ denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> <Space>
                \ denite#do_map('toggle_select').'j'
endfunction

"deoplete-tabnine config
call deoplete#custom#var('tabnine', {
\ 'line_limit': 500,
\ 'max_num_results': 20,
\ })

"basic config
filetype plugin on
syntax on set number
set number
set relativenumber
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap
let mapleader = ","
set cursorline


"colors
syntax enable
let g:airline_theme='luna'
"Enable true color
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
set background=dark
colorscheme blayu

