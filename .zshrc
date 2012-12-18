# zsh path
fpath=(~/.zsh.d/functions $fpath)

# path
export PATH="./bin:/usr/local/bin:/usr/local/sbin:$PATH"

# color
export CLICOLOR=1

# completion
autoload -U compinit
compinit
setopt correctall

# prompt
autoload -U promptinit
promptinit
prompt clint # good enough

# history
export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt inc_append_history
setopt hist_reduce_blanks

# zsh misc
setopt autocd
setopt extendedglob

# ls
alias ls='ls -G'
alias ll='ls -la'

# OS-specific helpers
case $(uname) in
  Darwin)
    # editor
    export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a iTerm"'
    bindkey -e # emacs key bindings

    # Quicklook
    function see {
      qlmanage -p $1 >& /dev/null
    }

    # Use Clang
    export CC="/usr/bin/clang"
    export CXX="/usr/bin/clang++"
    export HOMEBREW_CC=clang

    # Dealing with Java
    export JAVA_HOME="$(/usr/libexec/java_home)"
  ;;
esac

# CUDA
if [[ -d /usr/local/cuda ]]; then
  export PATH="/usr/local/cuda/bin:$PATH"
fi

# credentials
if [ -f ~/.zshrc_private ]; then
  source ~/.zshrc_private
fi

# rbenv
eval "$(rbenv init -)"
