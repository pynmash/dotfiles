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

# Set default editor to vim
export VISUAL=nvim
export EDITOR="$VISUAL"

# Set the prompt
PROMPT=' %B%F{blue}%3~%f%b %(!.#.⋗ '
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{blue}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# Swap caps lock and escape keys (for better vim experience)
# setxkbmap -option caps:swapescape

# Aliases
alias vim="nvim"
alias env="source .venv/bin/activate"
alias ls="eza --icons --group-directories-first"
alias la="eza --icons --group-directories-first -a"
alias ff="fzf"
alias gg="lazygit"
alias mkpp="git init && python -m venv .venv && echo './venv' > .gitignore && source .venv/bin/activate && nvim main.py"
alias py="python"
alias src="source .venv/bin/activate"
alias srcd="deactivate"
alias relcom="git log --oneline -1 && git log --pretty=format:'%h - %an, %ar : %s' | awk '{if(NR>1)print}'"

# Fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Init starship prompt
# eval "$(starship init zsh)"

eval "$(thefuck --alias)"
eval "$(zoxide init --cmd cd zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export PATH="$HOME/dan/scripts:$HOME/dan/.cargo/bin:$HOME/.emacs.d/bin:$PATH"
export PATH="$HOME/.config/emacs/bin:$PATH"

# Bind capslock to eacapet
export XKB_DEFAULT_OPTIONS=caps:escape

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source /usr/share/nvm/init-nvm.sh
