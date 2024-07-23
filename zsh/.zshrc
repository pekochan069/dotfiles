# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/thinline20/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

##################################################
# EXPORTS
##################################################

# path variable
export PATH=$HOME/bin:$HOME/bin/neovim/bin:$HOME/.bun/bin:$HOME/bin/roc:$HOME/bin/jetzig/bin:$PATH

# Set the default editors
export EDITOR=nvim
export VISUAL=nvim
alias vim="nvim"

# Aliases
source $HOME/.config/zsh/aliasrc

##################################################
# PACKAGES
##################################################

eval "$(starship init zsh)"

eval "$(zoxide init zsh)"

. "$HOME/.asdf/asdf.sh"

PATH=~/.console-ninja/.bin:$PATH

[[ ! -r /home/thinline20/.opam/opam-init/init.zsh ]] || source /home/thinline20/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# bun completions
[ -s "/home/thinline20/.bun/_bun" ] && source "/home/thinline20/.bun/_bun"

# fnm
export PATH="/home/thinline20/.local/share/fnm:$PATH"
eval "`fnm env`"
eval "$(fnm env --use-on-cd)"

# ZVM
export ZVM_INSTALL=/home/thinline20/.zvm/self
export PATH=$HOME/.zvm/bin:$ZVM_INSTALL:$PATH

##################################################
# PLUGINS
##################################################

# Sheldon Package Manager
eval "$(sheldon source)"

