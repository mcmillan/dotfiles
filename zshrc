export ZSH=/Users/$USER/.oh-my-zsh

# this is used by my zsh theme to hide user / hostname info if I'm looking at a terminal
# on my own machine, but hides it on remote sessions
DEFAULT_USER=`whoami`

# use oh-my-zsh's "agnoster" theme
ZSH_THEME="agnoster"

# enables support for hyphen-insensitive completion
HYPHEN_INSENSITIVE="true"

# oh-my-zsh plugins
plugins=(git ruby rails bundler node npm nvm docker docker-compose)

# load oh-my-zsh stuff
source $ZSH/oh-my-zsh.sh

# alias `heroku` to `hk`
alias hk="heroku"

# alias `git push heroku master` to `gph`
alias gph="git push heroku master"

# alias `atom` to `code` as I have atom engrained in muscle memory but now use VS Code
alias atom=code

# enable rbenv
eval "$(rbenv init -)"

# enable nvm
export NVM_DIR="/Users/$USER/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# go bits and pieces
export GO111MODULE="on"
export GOPATH="/Users/$USER/code/go"
export PATH="/usr/local/sbin:$PATH:$GOPATH/bin"

# gitignore
function gitignore() { curl -L -s https://www.gitignore.io/api/$@ ;}

# dido
alias dido='curl --silent https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/Music/b1/c4/aa/mzm.hmyvdzut.aac.p.m4a > /tmp/dido.m4a && afplay /tmp/dido.m4a && rm /tmp/dido.m4a'

# make stuff
alias mu='make up'
alias mt='make test'
alias mtw='make test-watch'
alias mm='make migrate-dev && make migrate-test'
alias mmd='make migrate-dev'
alias mmt='make migrate-test'
alias mgm='make generate-migration'
alias mrb='make rebuild'
alias mfuck='make oh-god-please-help-me'

# docker-compose stuff
alias dcu='docker-compose up'
alias dcub='docker-compose up --rebuild'
alias dcb='docker-compose build'
alias dcd='docker-compose down'
