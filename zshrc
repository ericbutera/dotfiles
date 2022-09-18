if [[ $OSTYPE == 'darwin'* ]]; then
    source /opt/homebrew/share/antigen/antigen.zsh
else
    source /usr/share/zsh-antigen/antigen.zsh
fi

antigen use oh-my-zsh
antigen bundle mroth/evalcache
antigen bundle Aloxaf/fzf-tab
antigen bundle jeffreytse/zsh-vi-mode
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle agkozak/zsh-z
antigen bundle ssh-agent

antigen apply

if [  -n "$(uname -a | grep Ubuntu)" ]; then
    alias bat="batcat"
    export PATH=$PATH:/snap/bin
    alias mkctl="microk8s kubectl"
fi

_evalcache starship init zsh

export GPG_TTY=$(tty)
export TERM=xterm-256color

# export PATH=$PATH:~/.go/bin # path for gimme
# export GOPATH=~/go  # for now 1 gopath for everything.. this wont work across go versions
# eval "$(gimme 1.19)"
#
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh && enable-fzf-tab')

# TODO:
# LS_COLORS="$(vivid generate molokai)"

# put user config in .zprofile
