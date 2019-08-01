# if [ "$TMUX" = "" ]; then tmux; fi

ZSH_THEME="spaceship-prompt/spaceship"
# ZSH_THEME="geometry/geometry"
# ZSH_THEME="norm"
plugins=(git zsh-syntax-highlighting react-native)

skip_global_compinit=1

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

# source $(dirname $(gem which colorls))/tab_complete.sh
source $ZSH/oh-my-zsh.sh


#::::::::::::#
#    PATH    #
#::::::::::::#

# Path JAVA
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
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

# Path lumen-php
export PATH=$PATH:$HOME/.config/composer/vendor/bin

# Path colorls
# export PATH=$PATH:$HOME/.gem/ruby/2.5.0/bin/

# Path rustup & cargo
export PATH=$PATH:$HOME/.cargo/bin

# Path OTFCC
export PATH=$PATH:$HOME/.config/otfcc/bin/release-x64

# Path ccat
export PATH=$PATH:$HOME/.config/ccat

# Path flutter
export PATH=$PATH:/usr/local/flutter/bin

# Path Genymotion
export PATH=$PATH:$HOME/genymotion

# Path Yarn
export PATH="$PATH:$(yarn global bin)"

# Path NVIM
export PATH=$PATH:$HOME/.config/nvim/autoload

# Path ReactTools
export REACT_EDITOR=nvim

# Path NPM
export PATH=~/.npm-global/bin:$PATH

# Path DEPOT_TOOLS
export PATH=$PATH:$HOME/.local/share/depot_tools

# Path Flutter
export PATH=$PATH:$HOME/flutter/bin

# Dart Path
export PATH=$PATH:$HOME/dart-sdk/sdk/out/ReleaseX64/dart-sdk/bin
export PATH="$PATH":"$HOME/.pub-cache/bin"

# XDG CONFIG
export XDG_CONFIG_HOME="$HOME/.config"


#:::::::::::#
#  ALIASES  #
#:::::::::::#

# Dumping files
dump() {
  mv "$1" "$1.dump"
}

# Revive files
undump() {
  files="$1"
  files_length=${#files}
  without_dump=files_length-5
  real_files=${files:0:$without_dump}
  mv "$1" $real_files
}


# Set git aliases
alias gcl="git clone"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push -u origin master"
alias gcheat="cat ~/.gitcheat"


# Set app aliases
alias blue="bluetoothctl"
alias sing="ncmpcpp"
alias yt="mpsyt"

# Set aliases
alias cat="ccat"
alias ls="colorls"
alias LS="ls -al"
alias ",,"="cd .."
alias c="clear"
alias x="exit"
alias del="rm -rf"
alias //+="yaourt -S"
alias //-="yaourt -R"
alias finds="yaourt"
alias list="dpkg -l | grep ^ii"
alias updates="sudo dnf update"
#alias arem="sudo dnf autoremove"
alias DO="cd ~/Downloads"
alias netsh="sudo create_ap wlp3s0 wlp3s0 the_immovable 98989890"
alias trash="rm -rf ~/.local/share/Trash/*"
alias sdk="~/Android/Sdk/tools/bin/sdkmanager"
alias avd="~/Android/Sdk/tools/bin/avdmanager"
alias tap14="xinput set-prop 14 300 1 && xinput set-prop 14 282 1"
alias tap10="xinput set-prop 10 282 1"
alias rnet="/etc/init.d/networking restart"
alias von="sudo pvpn -f"
alias voff="sudo pvpn -d"
alias aft="~/.config/android-transfer/qt/android-file-transfer"
alias gotop="~/.config/gotop/gotop"
alias astudio="/usr/local/android-studio/bin/studio.sh"
alias nonsecure-chrome="google-chrome --disable-web-security --user-data-dir='~/chrome-not-secure'"
alias v="nvim"
alias vconf="v ~/.config/nvim/init.vim"

# Web Server Command
alias htdocs="cd /srv/http"
alias wsstart="sudo systemctl start httpd.service"
alias wsrestart="sudo systemctl restart httpd.service"
alias wsstop="sudo systemctl stop httpd.service"
alias wsconfig="sudo nvim /etc/httpd/conf/httpd.conf"

# Steam Command
alias play="steam -tcp -no-browser"

# Todo-txt Tools
alias T="todo-txt ls"
alias TA="todo-txt add"

# React Tools
alias RUN="react-native run-android"
alias LRUN="npm run android-linux"
alias EMU="emulator @justPixel -skin 480x800"

# NPM tools
alias npmglob="sudo npm i -g"
alias npmsave="npm i -S"
alias npmremovesave="npm uninstall -S"
alias npmremoveglob="sudo npm uninstall -g"

# Ricing
alias icheat="cat ~/.config/i3/config"
alias iconf="nvim ~/.config/i3/config"

alias pcheat="cat ~/.config/polybar/config"
alias pconf="nvim ~/.config/polybar/config"

alias zconf="nvim ~/.zshrc"
alias zcheat="cat ~/.zshrc"

alias xconf="nvim ~/.Xresources"
alias xcheat="cat ~/.Xresources"
alias xupdate="xrdb ~/.Xresources"

alias kconf="nvim ~/.config/kitty/kitty.conf"
alias kcheat="cat ~/.config/kitty/kitty.conf"

alias nconf="nvim ~/.config/neofetch/config.conf"

alias tconf="nvim ~/.config/terminator/config"

alias rconf="code ~/.config/rofi/mytheme.rasi"

alias neo="neofetch --w3m $HOME/Pictures/alex-perez-550765-unsplash-neo.jpg"

#alias aura="~/.config/aurafetch/aura"

alias SS="scrot -c -d 2"

# OPENBOX CHEAT
alias obrcconf="v ~/.config/openbox/rc.xml"
alias obmenuconf="v ~/.config/openbox/menu.xml"
alias obautostartconf="v ~/.config/openbox/autostart"
alias obenvconf="v ~/.config/openbox/environment"


# Change Wallpaper
alias wmorn="feh --bg-fill ~/Pictures/benjamin-voros-498318-unsplash-morning.jpg"
alias wnoon="feh --bg-fill ~/Pictures/benjamin-voros-498318-unsplash-evening.jpg"
alias wnight="feh --bg-fill ~/Pictures/benjamin-voros-498318-unsplash-night.jpg"

fpath+=${ZDOTDIR:-~}/.zsh_functions


# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

