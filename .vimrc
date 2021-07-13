let mapleader=" "


syntax on

call plug#begin('~/.vim/plugged')
Plug 'leafgarland/typescript-vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'dart-lang/dart-vim-plugin'
Plug 'ryanoasis/vim-devicons'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug '907th/vim-auto-save'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/tagbar'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'inside/vim-search-pulse'
Plug 'rbong/vim-flog'
Plug 'tpope/vim-fugitive'
Plug 'rakr/vim-one'
Plug 'navarasu/onedark.nvim'
Plug 'Asheq/close-buffers.vim'
Plug 'TovarishFin/vim-solidity'
Plug 'jparise/vim-graphql'
Plug 'cespare/vim-toml'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install && yarn add prettier-plugin-solidity',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'solidity'] }
call plug#end()

if (has('nvim'))
    let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has('termguicolors'))
    set termguicolors
endif

"let g:material_terminal_italics=1
"let g:material_theme_style='darker'
let g:onedark_style = 'warmer'
colorscheme onedark 
"let g:onedark_terminal_italics=1
"colorscheme one
""set background=dark " for the dark version
"" sdarkeret background=light " for the light version
""let g:one_allow_italics = 1


"hi Normal guibg=NONE ctermbg=NONE
hi MatchParen guibg=NONE guifg=#F04A58 gui=bold

set clipboard+=unnamedplus

set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set smartcase
set noswapfile
set undofile
set undodir=~/.vim/undodir
set encoding=UTF-8
set incsearch
set rnu
set nu
set laststatus=2

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

set shiftwidth=2
set timeoutlen=500
set ttimeoutlen=0
set cursorline

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

set wildmode=longest,list,full
set splitbelow splitright
set rtp+=/usr/local/opt/fzf

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

set runtimepath^=~/Development/Tools/coc-solidity

let g:prettier#exec_cmd_path = '~/.vim/plugged/vim-prettier/node_modules/.bin/prettier'
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.sol Prettier

"set statusline+=\ [%c]
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"set statusline^=%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}
"
let g:tagbar_type_dart = { 'ctagsbin': '~/.pub-cache/bin/dart_ctags' }


let g:python3_host_prog = '/usr/local/bin/python3'
let g:pymode_python = '/usr/local/bin/python3' 
let g:pyindent_searchpair_timeout = 10


let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 2


let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25

let g:airline_theme='minimalist'
"let g:airline_minimalist_showmod = 1
"let g:airline_theme='onedark'
"let g:airline_extensions = []
let g:airline#extensions#tagbar#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline_highlighting_cache = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline#extensions#tmuxline#enabled = 1
let airline#extensions#tmuxline#snapshot_file = "~/.tmux-status.conf"
let g:tmuxline_powerline_separators = 2
let g:tmuxline_preset = 'powerline'
let g:tmuxline_status_justify = 'left'
let g:tmuxline_preset = {
      \'win'  : '#I #W #F',
      \'cwin' : '#I #W #F',
      \'y'    : [ '%a', '%r', '%Y-%m-%d' ],
      \'z'    : '#H',
      \ }


"Include <,> in auto pairs
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '```':'```', '"""':'"""', "'''":"'''", "`":"`", '<':'>'}

let g:NERDTreeGitStatusUseNerdFonts = 1

let g:fzf_action = {
  \ 'ctrl-t': 'GotoOrOpen tab',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_buffers_jump = 1
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.5 } }
let g:fzf_nvim_statusline = 0
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:loaded_syntastic_dart_dartanalyzer_checker = 0

nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :NERDTreeToggle<CR>
nnoremap <leader>pt :TagbarToggle<CR>
nnoremap <leader>po :CocCommand flutter.toggleOutline<CR>
nnoremap <silent> <Leader>= :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <silent> <Leader>_ :resize -5<CR>
nnoremap <silent> <Leader>+ :resize +5<CR>
vnoremap <Leader> J :m '>+1<CR>gv=gv
vnoremap <Leader> K :m '<-2<CR>gv=gv
tnoremap <Esc> <C-\><C-n>

nmap <silent>gd <Plug>(coc-definition)
nmap <silent>go :call CocAction('jumpDefinition', 'edit')<cr>
nmap <silent>gs :call CocAction('jumpDefinition', 'split')<cr>
nmap <silent>gv :call CocAction('jumpDefinition', 'vsplit')<cr>

nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
nnoremap <silent> gh :call <SID>show_documentation()<CR>


" Use `[g` and `]g` to navigate diagnostics
nmap <silent>[g <Plug>(coc-diagnostic-prev)
nmap <silent>]g <Plug>(coc-diagnostic-next)

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

"codeaction word
nmap <silent> <leader>aa <Plug>(coc-codeaction-selected)w

"codeaction paragraph
nmap <silent> <leader>ap <Plug>(coc-codeaction-selected)ap

vmap <silent> <leader>a  <Plug>(coc-codeaction-selected)
nmap <silent> <leader>a  <Plug>(coc-codeaction-selected)

" rename the current word in the cursor
nmap <leader>cr  <Plug>(coc-rename)
nmap <leader>cf  <Plug>(coc-format-selected)
vmap <leader>cf  <Plug>(coc-format-selected)

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

"" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
"" position. Coc only does snippet and additional edit on confirm.
"" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
"if exists('*complete_info')
  "inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"else
  "inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"endif

"inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction


" Close nerdtree automatically when window left open is a nerdtree
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open nerdtree when enter vim 
"au VimEnter * NERDTree
"
"" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
"" file, and we're not in vimdiff
"function! SyncTree()
  "if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    "NERDTreeFind
    "wincmd p
  "endif
"endfunction
"" Highlight currently open buffer in NERDTree
"autocmd BufEnter * call SyncTree()

function! s:GotoOrOpen(command, ...)
  for file in a:000
    if a:command == 'e'
      exec 'e ' . file
    else
      exec "tab drop " . file
    endif
  endfor
endfunction

command! -nargs=+ GotoOrOpen call s:GotoOrOpen(<f-args>)



function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)


autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

nnoremap <silent> <leader>ff :Files<CR>
nnoremap <silent> <leader>f1 :Files ../<CR>
nnoremap <silent> <leader>f2 :Files ../../<CR>
nnoremap <silent> <leader>fa :Rg<CR>
nnoremap <silent> <leader>fb :Buffers<CR>

nnoremap <silent> <leader>/ :let @/=""<CR>

"function! CloseHiddenBuffers()
    "" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    "" close any buffers hidden
    "" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    "let open_buffers = []

    "for i in range(tabpagenr('$'))
        "call extend(open_buffers, tabpagebuflist(i + 1))
    "endfor

    "for num in range(1, bufnr("$") + 1)
        "if buflisted(num) && index(open_buffers, num) == -1
            "exec "bdelete ".num
        "endif
    "endfor
    ""call <C-w>o
"endfunction
"
function! DeleteHiddenBuffers()
  let tpbl=[]
  let closed = 0
  call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
  for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
    if getbufvar(buf, '&mod') == 0
      silent execute 'bwipeout' buf
      let closed += 1
    endif
  endfor
  "echo "Closed ".closed." hidden buffers"
endfunction

au BufEnter * call DeleteHiddenBuffers()

nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

"augroup numbertoggle
  "autocmd!
  "autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  "autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
"augroup END
"
" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif


"map <Leader><Leader>l <Plug>(easymotion-lineforward)
nmap <Leader><Leader>l <Plug>(coc-smartf-forward)
nmap <Leader><Leader>j <Plug>(coc-smartf-forward)
nmap <Leader><Leader>h <Plug>(coc-smartf-backward)
nmap <Leader><Leader>k <Plug>(coc-smartf-backward)
"map <Leader><Leader>h <Plug>(easymotion-linebackward)
"
augroup Smartf
  autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#F04A58
  autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#282C34
augroup end

" Go to tab by number
noremap <silent><leader>1 1gt
noremap <silent><leader>2 2gt
noremap <silent><leader>3 3gt
noremap <silent><leader>4 4gt
noremap <silent><leader>5 5gt
noremap <silent><leader>6 6gt
noremap <silent><leader>7 7gt
noremap <silent><leader>8 8gt
noremap <silent><leader>9 9gt
noremap <silent><leader>0 :tablast<cr>

" navigate buffer
nmap <silent><leader>bn :bn<cr>
nmap <silent><leader>bp :bp<cr>

"Buffer delete menu
nnoremap <silent> Q     :Bdelete menu<CR>

"nmap <Esc> :call coc#float#close_all() <CR>
