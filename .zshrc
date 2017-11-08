export ZSH=/Users/falconerd/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias rnri="react-native run-ios"
alias rnra="react-native run-android"
alias vim="nvim"

newBranch() {
  git checkout develop
  git pull
  git checkout -b $1
}

donePR() {
  local branch="$(git rev-parse --abbrev-ref HEAD)"
  git push -d origin $branch
  git checkout develop
  git branch -D $branch
  git pull
}

export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=${PATH}:${ANDROID_HOME}/tools/bin

