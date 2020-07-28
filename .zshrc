
# ZSH Completions
  if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi

# Syntax Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Shell Aliases
[ -f ~/.shell_aliases ] && source ~/.shell_aliases 

# PATH
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export WORKON_HOME=$HOME/.envs
[ -f ~/usr/local/bin/virtualenvwrapper.sh ] && source /usr/local/bin/virtualenvwrapper.sh
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

#FZF
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# STARSHIP
eval "$(starship init zsh)"

export PATH="~/.cargo/bin:$PATH"

export WORKON_HOME=$VIRTUALENV_DIR 

