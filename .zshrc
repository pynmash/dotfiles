# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases
alias vim="nvim"
alias env="source .venv/bin/activate"
alias ls="eza --icons --group-directories-first"

# Init starship prompt
eval "$(starship init zsh)"

eval $(thefuck --alias)
eval "$(zoxide init zsh)"
