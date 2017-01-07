# Oh My ZSH Stuff
DEFAULT_USER="jonic"
DISABLE_CORRECTION="true"
HISTFILE="$HOME/.zsh_history"
plugins=(bower git node npm osx jump)
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/'.dotfiles/oh-my-zsh/'
ZSH_THEME='agnoster'

source $ZSH/oh-my-zsh.sh
source ~/.dotfiles/oh-my-zsh/k.sh

export PATH=$PATH:$HOME/npm/bin
export PATH=$PATH:$HOME/.composer/vendor/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# https://gist.github.com/olivierlacan/1195304
git config --global --unset-all core.editor
git config --global alias.stats 'shortlog -sn'

# Custom aliases
alias edit='atom'

alias ..="cd .."
alias ...="cd ../.."

alias a='atom'
alias dict='edit ~/Library/Spelling/LocalDictionary'
alias hostsconfig='edit /etc/hosts'
alias hypertermconfig='edit ~/.hyperterm.js'
alias j='jump'
alias knownhostsconfig='edit ~/.ssh/known_hosts'
alias m='mark'
alias phps='php -S localhost:8000'
alias pubkey='pbcopy < ~/.ssh/id_rsa.pub'
alias sshconfig='edit ~/.ssh/config'
alias v='vagrant'
alias vd='vagrant destroy'
alias vh='vagrant halt'
alias vp='vagrant provision'
alias vr='vagrant reload'
alias vu='vagrant up'
alias vs='vagrant ssh'
alias w='work'
alias zshconfig='edit ~/.zshrc'
alias zshreload='source ~/.zshrc'

if [[ -e /usr/local/share/chruby ]]; then
  source '/usr/local/share/chruby/chruby.sh'
  source '/usr/local/share/chruby/auto.sh'

  if [[ -f ~/.ruby-version ]]; then
    chruby $(cat ~/.ruby-version)
  fi
fi

export NVM_DIR="/Users/Jonic/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

ssh-add

# Some functions
function diediedie {
	sudo kill -9 `sudo lsof -t -i:80`
	sudo kill -9 `sudo lsof -t -i:8989`
}

function work {
  if (( $# == 0 )) then
    echo usage: work name;
  else
    j $1 && vu && vs
  fi
}
