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

# Swap caps lock and escape keys (for better vim experience)
setxkbmap -option caps:swapescape

# Aliases
alias vim="nvim"
alias env="source .venv/bin/activate"
alias ls="eza --icons --group-directories-first"
alias la="eza --icons --group-directories-first -a"
alias cd="z"
alias ff="fzf"
alias lg="lazygit"
alias src="source .venv/bin/activate"
alias srcd="deactivate"

# Init starship prompt
eval "$(starship init zsh)"

eval $(thefuck --alias)
eval "$(zoxide init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

PATH=$PATH:/home/dan/scripts:
