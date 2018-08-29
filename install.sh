###+--------------+###
###|     BREW     |###
###+--------------+###
# download brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# tell brew not to update in every download session
export HOMEBREW_NO_AUTO_UPDATE=1

###+--------------+###
###|     RUBY     |###
###+--------------+###
# be careful, run this section manually.
brew install rbenv
rbenv init

# get all versions of ruby
# Ruby version at the time updated this file is 2.5.1
rbenv install -list

# select the version ruby_version
# take a look at the completely stable version at
# https://www.ruby-lang.org/en/downloads/
# rbenv install ruby_version
rbenv install 2.5.1

# delect ruby as global or local user
# rbenv global ruby_version
# rbenv local ruby_version
rbenv global 2.5.1

# double check again...
rbenv versions

# install important gems
gem install bundler
gem install rails

# ruby auto-completion
gem install rsense

# Double check all installed gems
rbenv rehash

###+--------------+###
###|     APPS     |###
###+--------------+###
brew cask install visual-studio-code
brew cask install slack
brew cask install spotify
brew cask install github
brew install zsh
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install heroku

###+--------------+###
###|   CUSTOMIZE  |###
###+--------------+###
# https://medium.com/the-code-review/make-your-terminal-more-colourful-and-productive-with-iterm2-and-zsh-11b91607b98c
# cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
