export ZSH=/Users/$USER/.oh-my-zsh

# this is used by my zsh theme to hide user / hostname info if I'm looking at a terminal
# on my own machine, but hides it on remote sessions
DEFAULT_USER=`whoami`

# use oh-my-zsh's "agnoster" theme
ZSH_THEME="agnoster"

# enables support for hyphen-insensitive completion
HYPHEN_INSENSITIVE="true"

# oh-my-zsh plugins
plugins=(git ruby rails bundler node npm nvm docker-compose)

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

# enable pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# enable nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# go bits and pieces
export GO111MODULE="on"
export GOPATH="/Users/$USER/code/go"
export PATH="/usr/local/sbin:$PATH:$GOPATH/bin"

# gitignore
function gitignore() { curl -L -s https://www.gitignore.io/api/$@ ;}

# play a random dido track for 30 seconds
function dido() {
  curl --silent "https://itunes.apple.com/lookup?id=20646&entity=song&limit=30" | ruby -e "require 'json'; puts JSON.parse(STDIN.read)['results'].map { |r| r['previewUrl'] }.compact.shuffle.first" | xargs curl --silent > /tmp/dido.m4a
  afplay /tmp/dido.m4a
  rm /tmp/dido.m4a
}

# gpg fixes
export GPG_TTY=$(tty)

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

# git stuff
alias sup='git status'
alias push='git push -u origin head'
alias pr='push && hub pull-request'
alias chop='read -q "REPLY?sure? (this is destructive) y/n" && git checkout master && git reset --hard && git clean -fd && git pull --rebase && git checkout -b'
alias commit='ga . && gc'

# flutter
export PATH="$PATH:/Users/$USER/.flutter-sdk/bin"
