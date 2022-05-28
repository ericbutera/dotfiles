source /opt/homebrew/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle mroth/evalcache
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle agkozak/zsh-z
antigen theme starship

antigen apply

# eval "$(/opt/homebrew/bin/brew shellenv)"
_evalcache /opt/homebrew/bin/brew shellenv

# eval "$(starship init zsh)"
_evalcache starship init zsh

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
_evalcache pyenv init -

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
