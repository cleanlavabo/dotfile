##### Install nodejs

`$ apt install build-essential curl nodejs`

##### GPG server

`$gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3`

##### Get rvm 

`$ curl -sSL https://get.rvm.io | bash -s stable --ruby`

##### Reload the rvm profile 

`$ source ~/.rvm/scripts/rvm`

##### Search for help

`$ rvm help`

##### Show the version of ruby

`$ ruby -v`

##### Show the well-known versions of ruby

`$ rvm list known`

##### Install ruby with particular version

`$ rvm install 2.3`

##### Config the version of ruby 

`$ rvm use 2.3`

`$ rvm use 2.3 --default`

##### Install rails

`$ gem install rails`

##### Config the version of rails

`$ gem install rails -v 4.2`