alias ll="ls -l --color"
alias la="ls -la --color"
alias grep="grep --color=always"

alias headset="bluetoothctl power on && bluetoothctl connect 38:18:4C:11:D5:7B"
alias suspend="systemctl suspend"

alias vimrc="vim ~/.config/nvim/init.lua"
alias vimzrc="vim ~/.config/zsh/custom_zshrc"
alias rldzshrc=". ~/.zshrc"
alias vimsway="vim ~/.config/sway/config"
alias vimenvrc="vim ~/.config/zsh/env.sh"
alias vimaliases="vim ~/.config/zsh/aliases.sh"
alias vimalacritty="vim ~/.config/alacritty/alacritty.toml"
alias vimzshconfig="vim ~/.config/zsh/.zshrc"
alias vimohmyzsh="vim ~/.oh-my-zsh"
alias vimwaybar="vim ~/.config/waybar/style.css"

alias c="wl-copy"
alias v="xclip -o"

alias countlines="find . -name .git -prune -o -type f -name \"*\" -print | xargs wc -l "
alias whatsmyip="dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | sed 's/\"//g'"
alias pulumiupdate="curl -fsSL https://get.pulumi.com | sh"
alias rldwaybar="killall -SIGUSR2 waybar"
alias x="kubectx"
alias k="kubectl"

function work() {
  swaymsg output eDP-1 disable
  monitor=$(swaymsg -t get_outputs | jq -r '. | map(select(.name | test("^DP-\\d"))) | .[0].name')
  swaymsg output $monitor mode 2560x1440 position 0 560
  monitor=$(swaymsg -t get_outputs | jq -r '. | map(select(.name | test("^DP-\\d"))) | .[1].name')
  swaymsg output $monitor mode 2560x1440 position 2560 0 transform 90
}

function laptop() {
  monitor=$(swaymsg -t get_outputs | jq -r '. | map(select(.name | test("^DP-\\d"))) | .[0].name')
  swaymsg output $monitor disable
  monitor=$(swaymsg -t get_outputs | jq -r '. | map(select(.name | test("^DP-\\d"))) | .[0].name')
  swaymsg output $monitor disable
  swaymsg output eDP-1 enable
}

function standing() {
  if [[ -z "$1" || -z "$2" ]]; then
    echo "Usage: work displayID-left displayID-right"
    return 1
  fi
  swaymsg output eDP-1 disable
  monitor=$(swaymsg -t get_outputs | jq -r '. | map(select(.name | test("^DP-\\d"))) | .[0].name')
  swaymsg output $monitor mode 2560x1440 position 0 0
  monitor=$(swaymsg -t get_outputs | jq -r '. | map(select(.name | test("^DP-\\d"))) | .[0].name')
  swaymsg output $monitor mode 2560x1440 position 2560 0
}

alias vim="nvim"
