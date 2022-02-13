{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "paul";
  home.homeDirectory = "/home/paul";
  nixpkgs.config.allowUnfree = true;
  #Packages that shoud be installed to the user profile.
  home.packages = with pkgs; [
    #Terminal
    kitty
    ranger
    htop
    cmus
    ffmpeg
    pfetch
    killall
    tmux
    
    #Fonts
    nerdfonts
    
    #Utility
    picom
    feh
    pasystray
    unclutter

    #Dev
    sqlite
    gcc
    jdk11
    
    #office
    ktouch
    libreoffice
    zathura
    qutebrowser
    texlive.combined.scheme-full
    calibre
    thunderbird
    unzip

    #Games
    discord
    minecraft
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  #fish
  programs.fish = {
    enable = true;
  };
  
  #Emacs
  programs.emacs = {
    enable = true;
    extraPackages = epkgs : [
    epkgs.use-package
    #Modes
    epkgs.lua-mode
    epkgs.nix-mode
    epkgs.olivetti
    
    epkgs.vterm
    epkgs.doom-modeline
    epkgs.doom-themes
    epkgs.dashboard
    epkgs.evil
    epkgs.evil-collection
    epkgs.counsel
    epkgs.lsp-mode
    epkgs.lsp-ui
    epkgs.lsp-ivy
    epkgs.flycheck
    epkgs.lsp-treemacs
    epkgs.company
    epkgs.yasnippet
    epkgs.rainbow-delimiters
    epkgs.projectile
    epkgs.magit
    epkgs.org
    epkgs.org-superstar
    epkgs.ob-napkin
    epkgs.org-roam
    epkgs.pdf-tools
    epkgs.ledger-mode
    epkgs.flycheck-ledger
  ];
  };

  #NeoVim
  programs.neovim = {
    enable = true;
   viAlias = true;
   vimAlias = true;
   extraConfig = ''
   set nocompatible            " disable compatibility to old-time vi
   set showmatch               " show matching 
   set ignorecase              " case insensitive 
   set mouse=v                 " middle-click paste with 
   set hlsearch                " highlight search 
   set incsearch               " incremental search
   set tabstop=4               " number of columns occupied by a tab 
   set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
   set expandtab               " converts tabs to white space
   set shiftwidth=4            " width for autoindents
   set autoindent              " indent a new line the same amount as the line just typed
   set number                  " add line numbers
   set wildmode=longest,list   " get bash-like tab completions
   set cc=80                  " set an 80 column border for good coding style
   filetype plugin indent on   "allow auto-indenting depending on file type
   syntax on                   " syntax highlighting
   set mouse=a                 " enable mouse click
   set clipboard=unnamedplus   " using system clipboard
   filetype plugin on
   set cursorline              " highlight current cursorline
   set ttyfast                 " Speed up scrolling in Vim
   set spell                 " enable spell check (may need to download language package)
   set noswapfile            " disable creating swap file
   set backupdir=~/.cache/vim " Directory to store backup files.

 set termguicolors
 syntax enable
colorscheme dracula
set splitright
set splitbelow

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" move split panes to left/bottom/top/right
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L
" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>

" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>
" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>
" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
   '';
  
   plugins = with pkgs.vimPlugins; [
     dracula-vim
     vim-devicons
     UltiSnips
     vim-snippets
     nerdtree
     nerdcommenter
     vim-startify
     coc-nvim
   ];
  };

  #Git
  programs.git = {
    enable = true;
    userName = "Paul Daemmig";
    userEmail = "Paul-Daemmig@gmx.net";
  };

}