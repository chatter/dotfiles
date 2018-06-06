dotfiles
========

Set of configuration files for quickly setting up a new Mac OS X environment,
along with essential applications.

After checking out this repo, you will need to grab the submodules as well which can be done 
via the following command: `git submodules init && git submodules update --remote`

# Installing Applications

## [Homebrew](http://brew.sh)

One of the first items I install in a fresh environment is _Homebrew_. Install
_Homebrew_ by pasting the following in a terminal prompt:

 `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

## [iTerm2](http://www.iterm2.com/#/section/home)

I prefer to use _iTerm2_ over the default _Terminal.app_ supplied by OS X.
Install it via _homebrew_ with the following command:

 `brew cask install iTerm2`

### General Configuration

There's a couple configuration parameters to set, or make sure are set, for the
best experience. Go to `⌘, → Profiles → Terminal` and check the following:

* Under `Report Terminal Type` make sure `xterm-256color` is selected.
* Under `Environment` make sure `☑︎ Set locale variables automatically` is set.

### Colors

To set your color palette, go to `⌘, → Profiles → Terminal` and choose
`Color Presets…`. I presently use _Solarized Light_ but there are other good
options, for example [iTerm2-Color-Schems](https://github.com/mbadolato/iTerm2-Color-Schemes).

### [Powerline Fonts](https://github.com/powerline/fonts)

The _Powerline Fonts_ is included as a submodule within this repo. You can
navigate to the `/fonts` directory and choose the fonts of your choice to
install by double clicking on the `*.ttf* files. They will be added to
_Font Book_ automatically.

Now set the font for usage in iTerm2: `⌘, → Profiles → Text` and choose
`Change Font`. Select the newly installed font you wish to use.

Finally, I find the these two options when configured as shown to provide the
best experience. Feel free to experiment to find what works best for you. These
are in the same area as above.

    ☑︎ Draw bold text in bold font
    ☐ Draw bold text in bright colors

## [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)

Install by pasting the following in terminal prompt:

  `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

Next, symlink the _agnoster_ theme included in this repo as a submodule.
The one included with _Oh My Zsh_ is currently out of date.

  `ln -sf /path/to/this/repo/agnoster-zsh-theme/agnoster.zsh-theme ~/.oh-my-zsh/themes/`

Next, symlink the `.zshrc` file from this repo to the home directory:

   `ln -s /path/to/this/repo/.zshrc ~/`

*Note*: If you prefer solarized dark, then you do not need to symlink the
customized theme above. You will also want to remove `PRIMARY_FG="white"`
from `.zshrc` before symlinking.

## Vim

First, install _MacVim_ from _homebrew_ via the following command:

  `brew install macvim --override-sytem-vim`

Once that's done, symlink the `.vimrc` file into your home directory.

  `ln -s /path/to/this/repo/.vimrc ~/`


On next startup, [Plug](https://github.com/junegunn/vim-plug) will run
and should install of the plugins. One of the plugins,
[mileszsz/ack.vim](https://github.com/mileszs/ack.vim), requires
[ack](https://beyondgrep.com) to be installed. Optionally, it will use
[the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
if available. Both can be install via _homebrew_:

  * `ack`: `brew install ack`
  * `ag`: `brew install ag`
