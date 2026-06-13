# start ssh-agent
eval $(ssh-agent)
ssh-add ~/.ssh/thpserver

# fastfetch greeting
clear
fastfetch

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/cachyos-zsh-config/cachyos-config.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# bindkey -v

# my aliases
alias nv=nvim
alias cdcode="cd ~/Documents/Coding\ Projs\ Linux"
alias cdschool="cd ~/Documents/School\ Files/AY\ 2025-2026/Third\ Trimester"
alias cdcloud="cd ~/Nextcloud"

# path variables
export PATH=$PATH:"$HOME/.spicetify"
export PATH=$PATH:"$HOME/.cargo/bin"
export PATH=$PATH:"$HOME/go/bin"

# bun completions
[ -s "/home/notgian/.bun/_bun" ] && source "/home/notgian/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

if [ -e /home/notgian/.nix-profile/etc/profile.d/nix.sh ]; then . /home/notgian/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
