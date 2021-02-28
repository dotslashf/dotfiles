eval "$(starship init zsh)"
# source $HOME/.spaceship_conf
source $HOME/.env
# export STARSHIP_CONFIG=~/.starship

export ZSH=$HOME/.oh-my-zsh

export TERM="xterm-256color"
export DENO_INSTALL="/home/fadhlu/.deno"
export PATH=$PATH:$HOME/projects/go/bin
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH=$HOME/.composer/vendor/bin:$PATH

source ~/.fonts/*.sh
# Theme selection
# ZSH_THEME="spaceship"

plugins=(
    virtualenv 
    web-search 
    zsh-syntax-highlighting 
    zsh-completions 
    colorize 
    common-aliases
    zsh-autosuggestions
)

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias spotify="~/sp"
alias reload='source ~/.zshrc'
alias reset-mongo='sudo rm /var/lib/mongodb/mongod.lock;mongod -–repair;sudo service mongod start'

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export NVM_DIR="/home/fadhlu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH=${PATH}:/usr/local/mysql/bin/

# custom function
gg(){
    git add .
    git commit -m "$*"
}

ggwp(){
    git add .
    git commit -m "$*"
    git push origin
}

export GOPATH="$HOME/projects/go"
autoload -U compinit && compinit

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin
alias lg='lazygit'

source $ZSH/oh-my-zsh.sh
