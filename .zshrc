# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/elijahgaytan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#SOURCES
source ~/.zsh/themes/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#NVM SCRIPT - DON'T REMOVE
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
#for yarn globals
export PATH="$(yarn global bin):$PATH"

#Aliases
#DNF
alias dnfl="dnf list"                       # List packages
alias dnfli="dnf list installed"            # List installed packages
alias dnfgl="dnf grouplist"                 # List package groups
alias dnfmc="dnf makecache"                 # Generate metadata cache
alias dnfp="dnf info"                       # Show package information
alias dnfs="dnf search"                     # Search package
#sudo Dnf
alias dnfu="sudo dnf upgrade"               # Upgrade package
alias dnfi="sudo dnf install"               # Install package
alias dnfgi="sudo dnf groupinstall"         # Install package group
alias dnfr="sudo dnf remove"                # Remove package
alias dnfgr="sudo dnf groupremove"          # Remove package group
alias dnfc="sudo dnf clean all"             # Clean cache
#MISC
alias myip="curl http://ipecho.net/plain; echo"
#external aliases
source ~/.zsh/my_aliases
