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

# alias `atom` to `code` as I have atom engrained in muscle memory but now use VS Code
alias atom=code

# enable rbenv
eval "$(rbenv init -)"

# enable nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# go bits and pieces
export GO111MODULE="on"
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# gitignore
function gitignore() { curl -L -s https://www.gitignore.io/api/$@ ;}

# flutter
export PATH="$PATH:/Users/$USER/.flutter-sdk/bin"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
