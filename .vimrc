" Bundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 導入したいプラグインを以下に列挙
" Plugin '[Github Author]/[Github repo]' の形式で記入
Plugin 'airblade/vim-gitgutter'
Plugin 'aklt/plantuml-syntax'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'mattn/vim-lsp-icons'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'sgur/vim-editorconfig'
Plugin 'tyru/open-browser.vim'
Plugin 'iamcco/markdown-preview.nvim'
" { 'do': 'cd app &&  yarn install' }
Plugin 'weirongxu/plantuml-previewer.vim'
Plugin 'github/copilot.vim'

call vundle#end()
filetype plugin indent on

" setting
" 文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" ファイル間のコピー行数を増やす
set viminfo='20,\"1000

" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable


" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-,eol:\$,trail:_
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

noremap! <C-?> <C-h>

" plugin configurations
" vim-lsp
nmap <F12> <Plug>(lsp-definition)
nmap <C-]> <Plug>(lsp-definition)
nmap K <Plug>(lsp-hover)
nmap <C-a> <plug>(lsp-code-action)
nmap <C-n> <plug>(lsp-next-error)
nmap <C-p> <plug>(lsp-previous-error)
nmap <S-F12> <plug>(lsp-references)
nmap <S-F6> <plug>(lsp-rename)
nmap =- <plug>(lsp-document-format)
nmap <F11> <plug>(lsp-implementation)
nmap <F2> <plug>(lsp-type-definition)
nmap <S-F11> <plug>(lsp-document-diagnostics)
let g:lsp_diagnostics_signs_insert_mode_enabled = 0
let g:lsp_diagnostics_virtual_text_enabled = 0
" vim-nerdtree
nmap <silent> <C-e> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden = 1
let g:NERDTreeHighlightCursorline = 1
" plantuml-previewer
au FileType plantuml let g:plantuml_previewer#plantuml_jar_path = get(
    \ matchlist(system('cat `which plantuml` | grep plantuml.jar'), '\v.*\s[''"]?(\S+plantuml\.jar).*'),
    \ 1,
    \ 0
    \ )
" copilot
let g:copilot_filetypes = {
    \ 'gitcommit': v:true,
    \ 'markdown': v:true,
    \ 'yaml': v:true,
    \ 'json': v:true,
    \ 'typescript': v:true,
    \ 'typescriptreact': v:true,
    \ 'python': v:true,
    \ 'go': v:true,
    \ 'rust': v:true,
    \ }
