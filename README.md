dotfiles
========

Configuration files for quickly setting up a new environment



* [iTerm2](http://www.iterm2.com/#/section/home)
* [Solarized](http://ethanschoonover.com/solarized/files/solarized.zip)
* [Anonymous Pro](http://www.marksimonson.com/fonts/view/anonymous-pro)
* [Powerline](https://github.com/Lokaltog/powerline)
 
Install iTerm2, then download and unzip Solarized. Open prefrences in iTerm2 and choose _Profiles_ > _Colors_ and click _Load Presets..._. Navigate to the solarized files and install the _iterm2-colors-solarized_

Homebrew
=========
zsh
tmux
vim
rbenv
ruby-build

NOTES: (reformat later)

*powerline w/ tmux*
source {repository_root}/powerline/bindings/tmux/powerline.conf
set laststatus=2

For zsh on OS X may have issues with some plugins so move the following:
 sudo mv /etc/zshenv
