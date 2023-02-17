# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=2000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lorenzo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Oh My Posh
eval "$(oh-my-posh init zsh --config ~/.poshthemes/custom_catppuccin.omp.json)"

# Aliases
alias vim=nvim
alias docker=podman


bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^H' backward-kill-word
bindkey "^[[3;5~" kill-word
bindkey  "^[[3~"  delete-char
