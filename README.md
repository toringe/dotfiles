# dotfiles
My customized dot files.

## Prerequisites (OSX)

Download and install: 
* https://www.iterm2.com/downloads.html
* https://files.ax86.net/terminus-ttf/files/latest.zip
* https://draculatheme.com/iterm/

Run:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew cask install iterm2
brew install zsh zsh-completions
brew tap homebrew/cask-fonts
brew cask install font-awesome-terminal-fonts
git clone https://github.com/bhilburn/powerlevel9k.git ~/powerlevel9k
git clone https://github.com/dracula/iterm.git
```

Edit the iterm2 session with the following:
* Import Dracula color theme under "Colors"
* Set Dracula as a Color Preset
* Uncheck "draw bold text in bold font"
* Set Terminus TTF as the Font (14pt) and uncheck Anti-alias
* Check "Use a different Non-ASCII font"
* Set SourceCodePro Powerline Awesome Regular (12pt) as the Non-ASCII font and check "Anti-alias"
