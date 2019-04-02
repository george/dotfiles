export DOTFILES=$HOME/.dotfiles

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

eval "$(rbenv init -)"

# Homebrew: https://docs.brew.sh/Shell-Completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit
compinit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
