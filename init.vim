" Local configuration

if filereadable(glob('~/.config/nvim.local/init.vim'))
    exe 'set rtp+=' . expand('~/.config/nvim.local')
    source ~/.config/nvim.local/init.vim
endif

" Plugin installation

call plug#begin('~/.config/nvim/plugged')

" Theme
Plug 'altercation/vim-colors-solarized'

" Plugins
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-grepper'
Plug 'milkypostman/vim-togglelist'
Plug 'scrooloose/nerdcommenter'
Plug 'skywind3000/asyncrun.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-vinegar'
Plug 'vim-scripts/Align'
Plug 'w0rp/ale'
Plug 'will133/vim-dirdiff'

" Filetype native syntax and indentation
Plug 'jceb/vim-orgmode'
Plug 'mitsuhiko/vim-jinja'
Plug 'Vimjas/vim-python-pep8-indent'

" Filetype AutoFormat modules
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'lpenz/vim-codefmt-haskell'

call plug#end()

" Settings
set background=dark
colorscheme solarized
set expandtab tabstop=4 shiftwidth=4
set nowrap
set noswapfile
set autowriteall
set ignorecase

" Plugin config
let g:ale_sign_column_always = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:netrw_liststyle = 3
let g:netrw_winsize = 20
let g:grepper = {}
let g:grepper.tools = ['rg', 'grep', 'git']

" Keys
let g:mapleader=' '
nmap <F1> :echo ""<CR>
imap <F1> <C-O>:echo ""<CR>
nnoremap <silent> <leader>fs :update!<CR>
nnoremap <silent> <F2> :update!<CR>
imap <silent> <F2> <C-O><F2>
nnoremap <silent> <C-P> <C-I>
nnoremap <silent> <F4> :cn<CR>zv
nnoremap <silent> <F5> @q
nnoremap <silent> <F6> @w
nnoremap <silent> <F7> :Errors<CR>
nnoremap <silent> <F8> :Buffers<CR>
nnoremap <silent> <leader>bb :Buffers<CR>
nnoremap <silent> <leader>ff :Files<CR>
nmap <script> <silent> <F7> :call ToggleLocationList()<CR>
nmap <script> <silent> <F9> :call ToggleQuickfixList()<CR>

nnoremap <silent> <F10> :copen \| AsyncRun -program=make<CR>
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

"""

" Local overrides

if filereadable(glob('~/.config/nvim.local/init-after.vim'))
    source ~/.config/nvim.local/init-after.vim
endif

