:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard+=unnamedplus

source $HOME/.config/nvim/plugins_list.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/theming.vim
source $HOME/.config/nvim/leader_mappings.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/themes/airline.vim

command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
