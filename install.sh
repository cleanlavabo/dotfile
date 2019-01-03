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
gem install bundler --user-install
gem install rails --user-install

# ruby auto-completion
gem install rsense --user-install

# Double check all installed gems
rbenv rehash

# install zsh and oh-my-zsh
brew install git
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install zsh zsh-completions
# change shell to zsh
chsh -s /bin/zsh
# download nerd font
brew tap caskroom/fonts
brew cask install font-hack-nerd-font

echo "Warning: Init font before customize theme of iterm2"
echo "Iterm2 -> Preferences -> Profiles -> Text -> Font -> Change Font"
echo "Font name: Hack Regular Nerd Font Complete"

echo "POWERLEVEL9K_MODE='nerdfont-complete'" >> ~/.zshrc
git clone "https://github.com/bhilburn/powerlevel9k.git" ~/powerlevel9k
echo 'source  ~/powerlevel9k/powerlevel9k.zsh-theme' >> ~/.zshrc
echo "POWERLEVEL9K_MODE='awesome-patched'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"

# Elementos de la barra
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv virtualenv vi_mode)
POWERLEVEL9K_STATUS_VERBOSE=false

POWERLEVEL9K_DIR_HOME_BACKGROUND='09'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='09'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='009'
POWERLEVEL9K_DIR_HOME_FOREGROUND='236'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='236'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='236'

# git hub colors
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='236'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='119'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='236'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='214'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='236'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='196'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='236'

# Quitar iconos del inicio
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''

# Vi-Mode
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='005'
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='236'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='245'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='236'" >> ~/.zshrc

###+--------------+###
###|     APPS     |###
###+--------------+###
brew cask install visual-studio-code
brew cask install slack
brew cask install spotify
brew cask install github
brew cask install skype
brew cask install iterm2
brew cask install google-chrome
brew cask install sublime-text
brew cask install fork
brew cask install atom
brew install heroku/brew/heroku
brew install python
brew cask install docker
brew cask install macdown
brew cask install postman
brew cask install virtualbox
brew cask install the-unarchiver
brew cask install wkhtmltopdf
brew cask install teamviewer
brew cask install guitar-pro
brew cask install skitch
brew cask install discord
brew cask install zeplin
brew cask install rubymine
brew install wifi-password
brew install nvm
brew install youtube-dl
brew install tmux


# Android
brew cask install java
brew cask install jd-gui
brew cask install android-studio
brew install apktool
