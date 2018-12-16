source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_THEME="spaceship-prompt/spaceship"
plugins=(git zsh-syntax-highlighting zsh-wakatime)

skip_global_compinit=1

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

source $(dirname $(gem which colorls))/tab_complete.sh
source $ZSH/oh-my-zsh.sh



#::::::::::::#
#    PATH    #
#::::::::::::#


# Path androidsdk
export ANDROID_SDK=$HOME/Android/Sdk/
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH
export PATH=$PATH:$ANDROID_SDK/tools
export PATH=$PATH:$ANDROID_SDK/tools/bin
export PATH=$PATH:$ANDROID_SDK/platform-tools
export PATH=$PATH:$ANDROID_SDK/emulator

# Path lumen-php
export PATH=$PATH:$HOME/.config/composer/vendor/bin

# Path colorls
export PATH=$PATH:$HOME/.gem/ruby/2.5.0/bin

# Path rustup & cargo
export PATH=$PATH:$HOME/.cargo/bin

# Path OTFCC
export PATH=$PATH:$HOME/.config/otfcc/bin/release-x64

# Path ccat
export PATH=$PATH:$HOME/.config/ccat

# Path flutter
export PATH=$PATH:/usr/local/flutter/bin


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
alias c="clear"
alias x="exit"
alias del="rm -rf"
alias //+="sudo apt install"
alias //-="sudo apt remove --purge"
finds() {
  sudo apt-cache search $1 | grep -i $1
}
alias updates="sudo apt update && sudo apt upgrade"
alias arem="sudo apt autoremove"
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

# Todo-txt Tools
alias T="todo-txt ls"
alias TA="todo-txt add"

# React Tools
alias RUN="react-native run-android"
alias LRUN="npm run android-linux"
alias EMU="emulator @justPixel -skin 480x800"
alias BUKU="code ~/gitpro/buku_komunikasi/"

# NPM tools
alias nins="npm i --save"
alias nrem="npm uninstall"
alias ngins="npm i -g"

# Ricing
alias icheat="cat ~/.config/i3/config"
alias iconf="nano ~/.config/i3/config"

alias pcheat="cat ~/.config/polybar/config"
alias pconf="nano ~/.config/polybar/config"

alias zconf="nano ~/.zshrc"
alias zcheat="cat ~/.zshrc"

alias nconf="nano ~/.config/neofetch/config.conf"

alias tconf="nano ~/.config/terminator/config"

alias rconf="code ~/.config/rofi/mytheme.rasi"

alias neo="neofetch --w3m $HOME/Pictures/alex-perez-550765-unsplash-neo.jpg"

alias aura="~/.config/aurafetch/aura"

alias SS="scrot -c -d 2"


# Change Wallpaper
alias wmorn="feh --bg-fill ~/Pictures/benjamin-voros-498318-unsplash-morning.jpg"
alias wnoon="feh --bg-fill ~/Pictures/benjamin-voros-498318-unsplash-evening.jpg"
alias wnight="feh --bg-fill ~/Pictures/benjamin-voros-498318-unsplash-night.jpg"

fpath+=${ZDOTDIR:-~}/.zsh_functions
