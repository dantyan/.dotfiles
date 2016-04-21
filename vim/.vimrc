" remove traling slashes
	autocmd BufWritePre * :%s/\s\+$//e

	syntax on
	filetype on
	filetype plugin on
	filetype indent on

" keep 150 lines of command line history
	set history=150

" Количество действий которые можно отменить
	set undolevels=100

" Отключаем режим совместимости с vi
	set nocompatible

" Подсветка строки, где момент курсор
	set cursorline

"Включаем 256 цветов в терминале, мы ведь работаем из иксов?
"Нужно во многих терминалах, например в gnome-terminal
	set t_Co=256

"colorscheme wombat256
"	colorscheme wombat256 "Цветовая схема
	colorscheme xoria256 "Цветовая схема
"	colorscheme digerati "Цветовая схема

" highlight search results
	set hlsearch

" ignore case in search
	set ignorecase
	set incsearch

" Turn on number vertical line
	set number

" Задаем начальное количество столбцов под номера строк
	setlocal numberwidth=3

" Прячем курсор мыши при наборе текста
	set mousehide

" Подключение мыши
	set mouse=a
	set mousemodel=popup

" Набрав закрывающую скобку, показывает открывающую
	set showmatch
	set smartcase
	set modifiable

" Показывать положение курсора всё время.
	set ruler

" Показывать незавершённые команды в статусбаре
	set showcmd
	set ch=1
	set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P

" Количество строк видимых при вертикальной/горизонтальной прокрутке текста у краев окна
	set scrolloff=4             " 4 символа минимум под курсором
	set sidescrolloff=10        " 10 символов минимум под курсором при скролле
	set sidescroll=4
" Теперь нет необходимости передвигать курсор к краю экрана, чтобы подняться в режиме редактирования
	set scrolljump=7

	set termencoding=utf-8
	set fileencodings=utf-8,koi8-r,cp1251,utf-8
	set encoding=utf8

	set cindent
	set smartindent
	set modeline
	set virtualedit=all,onemore
	set autoindent

	set novisualbell
	set t_vb=
	set hidden

"	set nowrap
	set dir=/tmp

	set expandtab
	set backspace=indent,eol,start whichwrap+=<,>,[,]
	set shiftwidth=4
	set softtabstop=4
	set tabstop=4

" " Cool stuff to view word which changes now
	set cpoptions=ces$
	set sessionoptions=curdir,buffers,tabpages
	set nobackup
	set nowritebackup
	set noswapfile
	set autoread                " отслеживать изменения файлов
	set magic                   " добавим магии
	set shiftround              " удалять лишние пробелы при отступе
	set lazyredraw              " перерисовывать буфер менее плавно
	set confirm                 " использовать диалоги вместо сообщений об ошибках
	set fo+=cr
	set go+=a                   " выделение в виме копирует в буфер системы

" Опции автодополнения
    set completeopt=menu
    set infercase               " предлагать авто-дополнение на основе уже введённого регистра

	"set term=xterm

" Dublicate current line
	imap <C-d> <esc>yypi
" F2 - save
	nmap <F2> :w<cr>
	vmap <F2> <esc>:w<cr>i
	imap <F2> <esc>:w<cr>i
" F10 - exit
	nmap <F10> :q<cr>
	vmap <F10> <esc>:q<cr>
	imap <F10> <esc>:q<cr>
" F3 - undo
	nmap <F3> :u<cr>
	vmap <F3> <esc>:u<cr>i
	imap <F3> <esc>:u<cr>i

	nmap <F4> :w<cr>:!perl %<cr>
    vmap <F4> <esc>:w<cr>:!perl %<cr>
    imap <F4> <esc>:w<cr>:!perl %<cr>

	imap >Ins> <Esc>i
	set wildmenu
	set wcm=<Tab>

	" tab navigation like firefox
	nnoremap <A-left> :tabprevious<CR>
	nnoremap <A-right>   :tabnext<CR>
	" nnoremap <C-t>     :tabnew<CR>
	inoremap <A-left> <Esc>:tabprevious<CR>i
	inoremap <A-right>   <Esc>:tabnext<CR>i
	" inoremap <C-t>     <Esc>:tabnew<CR>

	set guifont=DejaVu\ Sans\ Mono\ 11

    map <Home> :SmartHomeKey<CR>
    imap <Home> <C-O>:SmartHomeKey<CR>

    " Use CTRL-S for saving, also in Insert mode
    noremap <C-S> :update<CR>
    vnoremap <C-S> <C-C>:update<CR>
    inoremap <C-S> <C-O>:update<CR>

" .less syntax higlight
au BufNewFile,BufRead *.less set filetype=less

"	set autochdir
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                         \ exe "normal g'\"" | endif
