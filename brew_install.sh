#!/bin/bash

# sudo xcodebuild -license
# then install brew

export HOMEBREW_INSTALL_CLEANUP=1
brew upgrade

# Basic tools
brew install bash-completion
brew install tree

brew install git
brew install tig
# git config --global fetch.prune true

# Dev tools
brew install terraform
brew install kubernetes-cli
brew cask install google-cloud-sdk
brew cask install docker
brew install maven

ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion /usr/local/etc/bash_completion.d/docker
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion /usr/local/etc/bash_completion.d/docker-machine
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion /usr/local/etc/bash_completion.d/docker-compose

# Misc
brew install jq
brew install graphviz
brew cask install drawio         # c.f. draw.io
brew install ipcalc

# Java and Scala
brew tap caskroom/versions
brew cask install java8

/usr/libexec/java_home -V

brew install scala
brew install sbt

# IDE
brew cask install intellij-idea-ce
brew cask install pycharm-ce
brew cask install visual-studio-code

# python 3.6
brew install pyenv
pyenv install 3.6
pyenv global 3.6

pip install --upgrade pip
pip3 install --upgrade pip setuptools wheel

# Node and yarn
brew install nodenv
nodenv init
eval "$(nodenv init -)"

nodenv install -l
nodenv install 10.13.0
nodenv global 10.13.0

brew install yarn --without-node

# Go lang
brew install go

# AWS
brew install awscli
brew tap aws/tap
brew install aws-sam-cli

pip install ptvsd

# Ruby
brew install rbenv ruby-build
rbenv install -l rbenv install 2.5.3
rbenv versions
rbenv global 2.5.3
ruby -v
brew install rbenv-communal-gems

# circle ci
brew install circleci

# Firefox
brew cask install firefox

# Elastic search
brew install elasticsearch

brew cask install virtualbox
brew cask install vagrant
