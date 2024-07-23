# Dotfiles

## Requirements

- [GNU Stow](https://www.gnu.org/software/stow/) - dotfile manager
- [zsh](https://www.zsh.org/) - shell
- [neovim](https://neovim.io/)0.11+ - editor
- [starship](https://starship.rs/) - prompt
- [zoxide](https://github.com/ajeetdsouza/zoxide) - better cd
- [sheldon](https://sheldon.cli.rs/) - zsh plugin manager

## Install packages

### Arch

```sh
sudo pacman -Syy git cmake gcc stow zsh starship zoxide sheldon
```

### Make zsh default shell

```sh
chsh -s /usr/bin/zsh
```

### Install neovim

install latest version from main branch in `$HOME/neovim/`

```sh
mkdir -p $HOME/bin/neovim
git clone https://github.com/neovim/neovim $HOME/bin/neovim/neovim-git
cd $HOME/bin/neovim/neovim-git
make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=$HOME/bin/neovim
make install
```

then restart session

```sh
zsh
```

## Get dotfiles

```sh
git clone https://github.com/pekochan069/dotfiles $HOME/dotfiles
```

## Apply dotfiles

```sh
cd $HOME/dotfiles
stow */
```

## Apply individual dotfiles

```sh
cd $HOME/dotfiles
stow nvim # apply neovim dotfiles
```

