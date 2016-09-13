# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

ZSH=$HOME/.zprezto

autoload -U promptinit; promptinit
prompt pure

source $ZSH/init.zsh
#source ~/.bin/tmuxinator.zsh

#rbenv configs
#eval "$(rbenv init -)" >> ~/.zlogin
#source ~/.zlogin

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

eval "$(hub alias -s)"

export EDITOR="vim"
