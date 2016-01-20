dotfiles
========

Set of configuration files for quickly setting up a new Mac OS X environment,
along with essential applications.

# Installing Applications

## [iTerm2](http://www.iterm2.com/#/section/home)

Download [iTerm2](http://www.iterm2.com/#/section/home) and follow the typical
installation procedure for a DMG file.

## General Configuration

There's a couple configuration parameters to set, or make sure are set, for the
best experience. Go to `⌘, → Profiles → Terminal` and check the following:

* Under `Report Terminal Type` make sure `xterm-256color` is selected.
* Under `Environment` make sure `☑︎ Set locale variables automatically` is set.

### [Solarized](http://ethanschoonover.com/solarized/files/solarized.zip)
Download [Solarized](http://ethanschoonover.com/solarized/files/solarized.zip)
themes, these contain a set of presets for iTerm2.

Then we want to load the Solarized Dark/Light themes into iTerm2. Start by doing the following series of commands: `⌘, → Profiles → Colors → Load Presents...`

Navigate to where you downloaded the solarized themes and look for the `iterm2-colors-solarized` folder and the two themes and hit enter.

Finally, select the `Solarized Light` theme from `Load Presets...`.

### [Powerline Fonts](https://github.com/powerline/fonts)
Checkout the [Powerline Fonts](https://github.com/powerline/fonts) from [GitHub](https://github.com):

    git clone https://github.com/powerline/fonts.git

This project only uses the `Anonymous Pro` and `Source Code Pro` fonts, so to
install those manually is fairly straight-forward. Open the repo in `Finder` and
navigate to the `AnonymousPro` folder. Then open `Font Book` and drag-and-drop
the `*.ttf` files onto `Font Book`. Repeat this for the `*.ttf` files in the
`SourceCodePro` folder.

Now set the font for usage in iTerm2: `⌘, → Profiles → Text`. For both
`Regular Font` and `Non-ASCII Font` choose `Change Font` and choose either
`Anonymous Pro for Powerline` or `Source Code Pro for Powerline`.

Finally, I find the these two options when configured as shown to provide the
best experience. Feel free to experiment to find what works best for you. These
are also found on the `Text` under `Profiles`.

    ☑︎ Draw bold text in bold font
    ☐ Draw bold text in bright colors

## [Homebrew](http://brew.sh)
Install Homebrew by pasting the following in a terminal prompt:

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Next install the following packages, `zsh`, `tmux`, `vim`, `powerline`, `ctags` and
`reattach-to-user-namespace` with the following command:

    brew install zsh tmux vim powerline ctags reattach-to-user-namespace

## If using Ruby
Always recommended to install a Ruby version manager. There's 3 options:
  * chruby + ruby-install - `brew install chruby ruby-install`
  * rbenv + ruby-build - `brew install rbenv ruby-build`
  * rvm - `brew install rvm`

## If using Elixir
Need to install elixir:
  * elixir - `brew install elixir`

## [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
Install by pasting the following in terminal prompt:

    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

Next, symlink the customized agnoster theme provided in this repo to
the `.oh-my-zsh` themes directory:

    ln -s /path/to/this/repo/agnoster-light.zsh-theme ~/.oh-my-zsh/themes/

Next, symlink the `.zshrc` file from this repo to the home directory:

    ln -s /path/to/this/repo/.zshrc ~/

Note: If you prefer solarized dark, then you do not need to symlink the
customized theme above. You will also need to modify the `.zshrc` file's
`ZSH_THEME` back to just `agnoster` from `agnoster-light` on line 9.

# tmux - WIP
## Powerline
source {repository_root}/powerline/bindings/tmux/powerline.conf
set laststatus=2

For zsh on OS X may have issues with some plugins so move the following:

    sudo mv /etc/zshenv


# Vim - WIP
## Powerline

Below is the relevant lines, already present, in .vimrc to enable Powerline
support:

```
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text
```

### Plugins

#### NERDTree

  * `o` open file under cursor or open/close directory
  * `i` open file in new horizontal split
  * `s` open file in new vertical split
  * `t` open file in a new tab
  * `p` go to parent directory
  * `r` refresh directory
  * `m` open NERDTree menu
