dotfiles
========

Configuration files for quickly setting up a new environment



* [iTerm2](http://www.iterm2.com/#/section/home)
* [Solarized](http://ethanschoonover.com/solarized/files/solarized.zip)
* [Anonymous Pro](http://www.marksimonson.com/fonts/view/anonymous-pro)
* [Powerline](https://github.com/Lokaltog/powerline)
 
Install iTerm2, then download and unzip Solarized. Open prefrences in iTerm2 and choose _Profiles_ > _Colors_ and click _Load Presets..._. Navigate to the solarized files and install the _iterm2-colors-solarized_

# Homebrew

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

# iTerm2

## Install Solarized Themes:

    Preferences ⌘, ⇢ Profiles ⇢ Colors ⇢ Load Presets… ⇢ Import… ⇢ (Navigate to iTerm Solarized Theme)

*TODO*: replace 'navigate to Iterm solarized theme' with something more specific

## Set Font to Anonymous Pro:

All settings take place on the Text panel in iTerm's Profiles Preferences

    Preferences ⇢ Profiles ⇢ Text
    
Set the font to Anonymous Pro for both regular and non-ascii fonts.

Uncheck `Draw bold text in bold font`
Check `Draw bold text in bright colors`

## Set iTerm's Terminal settings:

    Preferences ⇢ Profiles ⇢ Terminal
    
Select `xterm-256color` in the `Report Terminal Type` dropdown.

Check `Set locale variables automatically`
    
