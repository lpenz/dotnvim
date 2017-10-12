" Local configuration

if filereadable(glob('~/.config/nvim.local/init.vim'))
    exe 'set rtp+=' . expand('~/.config/nvim.local')
    source ~/.config/nvim.local/init.vim
endif

" Plugin installation

call plug#begin('~/.config/nvim/plugged')

Plug 'altercation/vim-colors-solarized'

Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-grepper'
Plug 'milkypostman/vim-togglelist'
Plug 'skywind3000/asyncrun.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-vinegar'
Plug 'vim-scripts/Align'
Plug 'w0rp/ale'
Plug 'will133/vim-dirdiff'

Plug 'jceb/vim-orgmode'
Plug 'mitsuhiko/vim-jinja'

call plug#end()

" Settings
set background=dark
colorscheme solarized
set expandtab tabstop=4 shiftwidth=4
set nowrap
set autowriteall
set ignorecase

" Plugin config
let g:airline_powerline_fonts = 1

" Keys
let g:mapleader=' '
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
nnoremap <silent> <leader>bb :CtrlPBuffer<CR>
nnoremap <silent> <leader>ff :CtrlP<CR>
nmap <script> <silent> <F7> :call ToggleLocationList()<CR>
nmap <script> <silent> <F9> :call ToggleQuickfixList()<CR>

nnoremap <silent> <F10> :make<CR>
nnoremap <silent> <F11> :call VimCommanderToggle()<CR>
imap <silent> <F10> <C-O><F10>

nnoremap <silent> <F12> :Lex<CR>

nnoremap <silent> <C-C> :qa!<CR>
nnoremap <silent> <C-Q> :bd<CR>
nnoremap <silent> Q :bd<CR>

nnoremap <leader><tab> <C-^>

nnoremap <leader>v :grep <C-R><C-W> . <CR>

" Visual search
xnoremap * y/\V<C-R>=substitute(escape(@@,"/\\"),"\n","\\\\n","ge")<CR><CR>
xnoremap # y?\V<C-R>=substitute(escape(@@,"?\\"),"\n","\\\\n","ge")<CR><CR>

