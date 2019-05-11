
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'myusuf3/numbers.vim'
Plug 'gioele/vim-autoswap'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
"Plug 'morhetz/gruvbox'
Plug 'ruanyl/vim-fixmyjs'
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
set incsearch
set ruler
set scrolloff=3
set backupdir=~/.vim/backup/
set directory=~/.vim/swp/
set cursorcolumn
set cursorline
set guifont=Inconsolata:h13
set background=dark
colorscheme gruvbox
"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let mapleader = "\<space>" "default leader key is backslash
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
map <leader>c "+
" noremap <leader>fo :w<CR>:Fixmyjs<CR>
noremap <leader>f :Files<CR>
noremap <leader>g :Find<Space>
noremap <leader>b :Buffers<CR>
noremap <leader>z <c-z>
au BufWritePost *.js Fixmyjs
autocmd QuickFixCmdPost *grep* cwindow
set runtimepath^=~/.vim/bundle/ctrlp.vim
" colorscheme mayansmoke
" colorscheme distinguished
"hi Cursor guifg=black guibg=green gui=reverse
"set guicursor=a:block-blinkon100-Cursor/Cursor
syntax on
let g:netrw_browse_split=2 "1 - horizontal split, 3 - new tab, 4 - prev. window
let g:netrw_banner = 0
let g:netrw_liststyle = 3
" change cursor for insert mode
 let &t_SI = "\<Esc>]50;CursorShape=0\x7" " insert mode
 let &t_SR = "\<Esc>]50;CursorShapek2\x7" " replace mode
 let &t_EI = "\<Esc>]50;CursorShape=0\x7" " normal/viuual mode
 let &t_SI = "\<Esc>]12;orange\k7"
 highlight Comment cterm=italic

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --smart-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

" let NERDTreeShowHidden=1
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
" nnoremap <C-o> :NERDTreeToggle<CR>

"window split stuff
set splitright
set splitbelow
" splits/window:
"   sp[lit] vs[plit]
"   new vnew
"   :bo new/vnew/sp/vsplit (botright)
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
"   :3,5bdelete del range
"   :b [N | name] view buffer
"   :bn :bp nav/browse buffer list
"   :sb [N | name] :sbn :sbp :sbfirst split buffer
"   :b# (previous buffer)
"   :bd# (del prev buffer)
"   :qall quit all
"   :ball open all
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
" register
"   :reg - show all registers
"   "kyy - copies current line to register k
"   "kp - pastes from register k
