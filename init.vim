
call plug#begin('~/.config/nvim/plugged')

" Plugins will go here in the middle.
Plug 'altercation/vim-colors-solarized'
Plug 'will133/vim-dirdiff'
Plug 'vim-scripts/Align'
Plug 'bling/vim-airline'
Plug 'mitsuhiko/vim-jinja'
Plug 'w0rp/ale'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" Settings
set background=dark
colorscheme solarized

" Keys
let mapleader=' '
nmap <F1> :echo ""<CR>
imap <F1> <C-O>:echo ""<CR>
nnoremap <silent> <leader>fs :update!<CR>
nnoremap <silent> <F2> :update!<CR>
imap <silent> <F2> <C-O><F2>
nnoremap <silent> <C-P> <C-I>
nnoremap <silent> <C-I> :echo ""<CR>
nnoremap <silent> <F4> :cn<CR>zv
nnoremap <silent> <F5> @q
nnoremap <silent> <F6> @w
nnoremap <silent> <F7> :Errors<CR>
nnoremap <silent> <F8> :CtrlPBuffer<CR>
nnoremap <silent> <F10> :make<CR>
nnoremap <silent> <F11> :call VimCommanderToggle()<CR>
imap <silent> <F10> <C-O><F10>

nnoremap <silent> <F12> :NERDTreeToggle<CR>

nnoremap <silent> <C-C> :qa!<CR>
nnoremap <silent> <C-Q> :bd<CR>
nnoremap <silent> Q :bd<CR>

nnoremap <leader><tab> <C-^>

nnoremap <leader>v :grep <C-R><C-W> . <CR>

