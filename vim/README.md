# Vim
## Create required directories
`mkdir -p "$HOME/.vim/swp"`

`mkdir -p "$HOME/.vim/backup"`

`mkdir -p "$HOME/.vim/undodir"`

`mkdir -p "$HOME/.vim/autoload"`

## Setup plugins 
### Install plugin manager
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Install plugins
`:PlugInstall`

