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

    Preferences ⌘, ⇢ Profiles ⇢ Text
    
Set the font to Anonymous Pro for both regular and non-ascii fonts.

    ☐ Draw bold text in bold font

    ☑︎ Draw bold text in bright colors

## Set iTerm's Terminal settings:

    Preferences ⌘, ⇢ Profiles ⇢ Terminal
    
    Select xterm-256color in the Report Terminal Type dropdown.

    ☑︎ Set locale variables automatically
    
# powerline

Now setup via pip.

`pip install --user powerline-status`

Then in .vimrc:

```
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
```

# Vi

### Plugins

#### NERDTree

  * `o` open file under cursor or open/close directory
  * `i` open file in new horizontal split
  * `s` open file in new vertical split
  * `t` open file in a new tab
  * `p` go to parent directory
  * `r` refresh directory
  * `m` open NERDTree menu
