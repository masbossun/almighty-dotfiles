# ZSH_THEME="spaceship-prompt/spaceship"

plugins=(git zsh-syntax-highlighting)

skip_global_compinit=1

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

export PATH="/home/masbossun/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# source $(dirname $(gem which colorls))/tab_complete.sh
source $ZSH/oh-my-zsh.sh

# https://github.com/sindresorhus/pure/issues/300 issue
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

#::::::::::::#
#    PATH    #
#::::::::::::#

# Path NODE
export PATH=$PATH:$HOME/dev/node/bin

# Path JAVA
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$PATH:$HOME/bin:$JAVA_HOME/bin

# Path androidsdk
export ANDROID_SDK=$HOME/Android/Sdk
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH
export PATH=$PATH:$ANDROID_SDK/tools
export PATH=$PATH:$ANDROID_SDK/tools/bin
export PATH=$PATH:$ANDROID_SDK/platform-tools
export PATH=$PATH:$ANDROID_SDK/emulator
export PATH=$PATH:$ANDROID_HOME/bundle-tool

# Path rustup & cargo
export PATH=$PATH:$HOME/.cargo/bin

# Webstorm
export PATH=$PATH:$HOME/webstorm/bin

# # Path OTFCC
# export PATH=$PATH:$HOME/.config/otfcc/bin/release-x64

# Path ccat
# export PATH=$PATH:$HOME/.config/ccat

#Path flutter
export PATH=$PATH:$HOME/flutter/bin

# Path Genymotion
# export PATH=$PATH:$HOME/genymotion

# Path Yarn
# export PATH="$PATH:$(yarn global bin)"

# Path NVIM
# export PATH=$PATH:$HOME/.config/nvim/autoload

# Path ReactTools
export REACT_EDITOR=nvim

# Path Snap
export PATH=$PATH:/snap/bin

# Path NPM
export PATH=~/.npm-global/bin:$PATH

# Path DEPOT_TOOLS
# export PATH=$PATH:$HOME/.local/share/depot_tools

# Dart Path
# export PATH=$PATH:$HOME/dart-sdk/sdk/out/ReleaseX64/dart-sdk/bin
# export PATH="$PATH":"$HOME/.pub-cache/bin"

# XDG CONFIG
export XDG_CONFIG_HOME="$HOME/.config"

# DENO
export DENO_INSTALL="$HOME/.local"
export PATH="$DENO_INSTALL/bin:$PATH"


#:::::::::::#
#  ALIASES  #
#:::::::::::#

timestamp(){
  $ts=date +"%s" | xclip -sel clip
  echo "current timestamp"
  date +"%s" && echo "coppied to clipboard :D"
}


# Set git aliases
alias gmaster="git checkout master && git fetch"
alias gcl="git clone"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gch="git checkout"
alias gb="git checkout -b"
alias discard="git checkout --"
alias pullmaster="git pull origin master"

# Set NPM Aliases
alias NODE_CLEAR="rm -rf node_modules && npm install && npm audit fix && cd ios && cd pod install || cd .."


# Set app aliases
alias blue="bluetoothctl"
alias sing="ncmpcpp"
alias yt="mpsyt"

# Set aliases
# alias cat="ccat"
# alias ls="colorls -a"
alias ls="exa -a --classify"
alias LS="ls -al"
alias cd=cd
alias ",,"="cd .."
alias c="clear"
alias x="exit"
alias del="rm -rf"
# alias //+="yaourt -S"
# alias //-="yaourt -R"
# alias finds="yaourt"
alias //+="sudo apt install"
alias //-="sudo apt remove && sudo apt autoremove"
alias finds="apt-cache search"
alias list="dpkg -l | grep ^ii"
alias updates="sudo dnf update"
alias arem="sudo apt autoremove"
alias DO="cd ~/Downloads"
# alias trash="rm -rf ~/.local/share/Trash/*"
# alias sdk="~/Android/Sdk/tools/bin/sdkmanager"
# alias avd="~/Android/Sdk/tools/bin/avdmanager"
alias gotop="~/.config/gotop/gotop"
alias v="nvim"
alias vconf="v ~/.config/nvim/init.vim"
alias G="cd ~/gitpro"
alias IP="hostname -i"
alias today=timestamp

# Web Server Command
# apache/httpd
alias htdocs="cd /srv/http"
alias apachestart="sudo systemctl start httpd.service"
alias apacherestart="sudo systemctl restart httpd.service"
alias apachestop="sudo systemctl stop httpd.service"
alias apacheconfig="sudo nvim /etc/httpd/conf/httpd.conf"
# mongodb
alias mongstart="sudo systemctl start mongodb.service"
alias mongstop="sudo systemctl stop mongodb.service"
alias mongrestart="sudo systemctl restart mongodb.service"
alias mongconfig="sudo nvim /etc/mongodb.conf"
alias mongrecover="sudo -u mongodb mongod --repair --dbpath /var/lib/mongodb/"

# Ricing
alias icheat="cat ~/.config/i3/config"
alias iconf="nvim ~/.config/i3/config"

alias pcheat="cat ~/.config/polybar/config"
alias pconf="nvim ~/.config/polybar/config"

alias zconf="nvim ~/.zshrc"
alias zcheat="cat ~/.zshrc"
alias zrefresh="source ~/.zshrc"

alias xconf="nvim ~/.Xresources"
alias xcheat="cat ~/.Xresources"
alias xupdate="xrdb ~/.Xresources"

alias kconf="nvim ~/.config/kitty/kitty.conf"
alias kcheat="cat ~/.config/kitty/kitty.conf"

alias nconf="nvim ~/.config/neofetch/config.conf"
alias tconf="nvim ~/.config/terminator/config"
alias rconf="code ~/.config/rofi/mytheme.rasi"
alias neo="neofetch --w3m $HOME/Pictures/alex-perez-550765-unsplash-neo.jpg"
alias SS="scrot -c -d 2"

# OPENBOX CHEAT
alias obrcconf="v ~/.config/openbox/rc.xml"
alias obmenuconf="v ~/.config/openbox/menu.xml"
alias obautostartconf="v ~/.config/openbox/autostart"
alias obenvconf="v ~/.config/openbox/environment"

# PYTHON ALIASES
alias p="python"
alias ps="pipenv shell"
alias pm="python manage.py"

alias matlab="~/MATLAB/bin/matlab"


# if [ "$TMUX" = "" ]; then tmux && neofetch; fi

eval "$(starship init zsh)"
