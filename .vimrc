
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'myusuf3/numbers.vim'
Plug 'gioele/vim-autoswap'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'ruanyl/vim-fixmyjs'
Plug 'arcticicestudio/nord-vim'
call plug#end()
filetype plugin indent on
set hidden
set termguicolors
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set clipboard=unnamed
set autoindent
set number
set incsearch
set ruler
set scrolloff=3
set backupdir=~/.vim/backup/
set directory=~/.vim/swp/
set cursorcolumn
set cursorline
set guifont=Inconsolata:h13
set background=dark
let g:gruvbox_contrast='hard'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:jsx_ext_required = 0
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](node_modules)',
  \ }
inoremap kj <Esc>
nnoremap <leader>j :%!python -m json.tool<cr>
map <leader>g :Ggrep<Space>
autocmd QuickFixCmdPost *grep* cwindow
set runtimepath^=~/.vim/bundle/ctrlp.vim
" colorscheme mayansmoke
" colorscheme distinguished
colorscheme gruvbox
syntax on
au BufWritePre *.js :Fixmyjs
au BufWritePre *.jsx :Fixmyjs
let g:netrw_browse_split=4      " Open file in previous buffer

" change cursor for insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" highlight Comment cterm=italic
"
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
nnoremap <C-o> :NERDTreeToggle<CR>

" splits/window:
"   sp[lit] vs[plit]
"   new vnew
" window
"   move:
"   Ctrl+w r (rotate)
"   Ctrl+w [LKJH]
"   sizing:
"   Ctrl+w | (maximize)
"   Ctrl+w = (equal size)
" buffer commands
"   :badd file.txt open buffer
"   :bdel [N | name]
"   :3,5bdelete
"   :b [N | name] view buffer
"   :bn :bp browse buffer
"   :sb [N | name] :sbn :sbp :sbfirst
"   :b# (previous buffer)
"   :bd# (del prev buffer)
"   :Bclose (close buffer not window)
" explore
"   Sexplore
"   Vexplore
" :noh (clear highlighted text)
" tabs
"   :tabnew
"   :tabn
"   :tabp
"   :tabedit [file]
"   :tabclose
