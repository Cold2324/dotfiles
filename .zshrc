neofetch --ascii $HOME/.config/neofetch/phantom.txt

#  +------------------------------------------------------------------------------+
#  |Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.|
#  +------------------------------------------------------------------------------+
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#  +--------------------------------------+
#  | Path to your oh-my-zsh installation. |
#  +--------------------------------------+
export ZSH="$HOME/.oh-my-zsh"

#  +-----------+
#  | Oh My ZSH |
#  +-----------+
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

#  +----------------------------------------------------------------------------+
#  | Change the powerlevel10k theme with `p10k configure` or edit `~/.p10k.zsh` |
#  +----------------------------------------------------------------------------+
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#  +---------------+
#  | Basic aliases |
#  +---------------+
alias ls="exa --group-directories-first --icons"
alias cat="bat"
alias tree="exa -T"
alias top="htop"
alias deb="ar -x"
alias neofetch="neofetch --ascii $HOME/.config/neofetch/phantom.txt"

#  +------------------+
#  | Dotfiles aliases |
#  +------------------+
alias dotfiles="git --git-dir $HOME/.dotfiles/ --work-tree $HOME"
alias daa="dotfiles add ."
alias dcm="dotfiles commit -m"
alias dlog="dotfiles log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias dcma="dotfiles commit --amend"
alias ds="dotfiles status -s"
alias dp="dotfiles push"

#  +-------------+
#  | Git aliases |
#  +-------------+
alias gaa="git add ."
alias gcm="git commit -m"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#  +---------------+
#  | Env variables |
#  +---------------+
export PATH=/bin/exercism:$PATH
export PATH=~/.deno/bin/deno:$PATH
export EDITOR=/usr/bin/nvim

#  +----------------------------+
#  | Node Version Manager "NVM" |
#  +----------------------------+
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
