" must be set with multiple strings
scriptencoding utf-8

" 改行時にインデント挿入
set autoindent

" 高度なインデント処理
set smartindent

" タブが対応する空白の数
set tabstop=4

" インデントでずれる幅
set shiftwidth=4

" タブキーでカーソルが動く幅
set softtabstop=4

" タブの代わりに空白を挿入
set expandtab

" <TAB>キーで空白を自動調整
set smarttab

" 折り返しの際にインデントを考慮
" set breakindent

" 構文の色分け
syntax on

" ハイライトで検索
set hlsearch
nohlsearch

" 大文字小文字を無視
set ignorecase

" インクリメンタル検索
set incsearch

" 大文字が入力されたら大文字小文字を区別する
set smartcase

" 外部でバッファが変更されたら自動的に読み込み
set autoread

" 隠れ状態にしない
set nohidden

" スワップファイル作成しない
set noswapfile

" バックアップを残さない
set nowritebackup

" undo 記録を残す
set undofile undodir=~/.vimundo

" 色数
set t_Co=256

" コマンドラインの行数
" set cmdheight=3

" 現在行の色を変える
set cursorline
let g:cursorline_flg = 1
let g:cursorcolumn_flg = 0

" 再描画しない
set lazyredraw

" 不可侵文字を可視化
set list
set listchars=tab:>\ "

" 行番号を表示
set number

" 最低でも上下に表示する行数
set scrolloff=5

" 自動折りしない
set textwidth=0

" タブページのラベルを常に表示
set showtabline=2

" 長い行を @ にさせない
set display=lastline

" 埋める文字
set fillchars=stl:\ ,stlnc:\ ,vert:\|,fold:-,diff:-

" ベルを無効化
set visualbell t_vb=

" RSense 自動補完
"let g:rsenseUseOmniFunc = 1

"" NeoBundle設定
set nocompatible
filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/clang_complete'
NeoBundle 'Shougo/echodoc'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vim-vcs'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vinarise'
NeoBundle 'davidhalter/jedi-vim'

call neobundle#end()

" docstring を表示しない
autocmd FileType python setlocal completeopt-=preview

" ファイルタイプ毎にインデント設定
filetype plugin indent on

