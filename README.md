# dotfiles
My customized dot files.

## Prerequisites (OSX)

Download and install: 
* https://files.ax86.net/terminus-ttf/files/latest.zip <-- Unzip and open in Finder
* https://draculatheme.com/iterm/ <-- Download and import in Iterm2

Run:
```
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Iterm2
brew cask install iterm2

# Zsh and git
brew install zsh zsh-completions git gh

# Oh-my-zsh framework
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Fonts
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
