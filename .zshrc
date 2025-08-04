GPG_TTY=$(tty)
export GPG_TTY
gpg-connect-agent updatestartuptty /bye >/dev/null

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias ls="lsd"
alias cat="bat"
alias vi="'vim'"
alias vim="nvim"
alias ssh="kitten ssh"
alias icat="kitten icat"
alias shutdown="shutdown now"
alias reboot="sudo reboot now"

# Created by `pipx` on 2024-09-05 00:27:00
export PATH="$PATH:/home/edmateo/.local/bin"


