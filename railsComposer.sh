#!/bin/bash --login
# railsComposer.sh

#  ./railsComposer.sh AppName

myapp=$1

mkdir $myapp
cd $myapp
rvm use ruby-2.1.1@$myapp --ruby-version --create
gem install rails
rails new . -m https://raw.github.com/RailsApps/rails-composer/master/composer.rb