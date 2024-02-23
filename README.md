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

## Updating Neovim

### Ubuntu / Linux

Taken from [the neovim docs](https://github.com/neovim/neovim/blob/master/INSTALL.md#pre-built-archives-2)

```sh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```
  
After this step add this to `~/.bashrc`:
```sh
export PATH="$PATH:/opt/nvim-linux64/bin"
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
