# Neovim Config
## Prerequisites
Install [ripgrep](https://github.com/BurntSushi/ripgrep#installation) for the grep script
```
sudo apt-get install ripgrep
```


Install [Packer](https://github.com/wbthomason/packer.nvim#quickstart) 
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```

### On WSL2
Install GNU compiler tools for treesitter
```
sudo apt-get install build-essential gdb
```

### Seting up copilot
```
:Copilot setup
```

## Updating Changes to Config
```
:PackerSync
:TSUpdate
```
