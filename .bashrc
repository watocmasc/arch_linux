#
# ~/.bashrc
#

#output=$(python ~/.config/battery.py)
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1="[ \[\e[93m\]\A\[\e[0m\] ]:\[\e[94m\]\w\[\e[0m\] \[\e[32m\]\$ \[\e[0m\]"

alias upd='sudo pacman -Syu && nouse'
alias dlf='sudo rm -r'
alias dlp='sudo pacman -Rscun'
alias keyboard='setxkbmap us,ru -option 'grp:alt_shift_toggle''
alias nouse='sudo pacman -Rns $(pacman -Qdtq) || sudo pacman -Scc'
alias stp='sudo pacman -S'
alias bye='sudo shutdown now'
alias restart='sudo reboot now'
alias mak='makepkg -si'
alias grubach='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias packs='pacman -Qe'
alias ard='~/arduino-ide/arduino-ide & exit 0'
alias build='~/.config/build.sh'
alias ardusb='sudo chmod 777 /dev/ttyUSB*'
alias files='ls -1 | wc -l' # how many files in my directory
alias obs='/home/x/obsidian.AppImage & exit 0'
alias vpnon="sudo vpn connect"
alias vpnoff="sudo vpn disconnect"
alias vpnadd="sudo vpn add"
alias vpnlist="sudo vpn list"
alias vpnsts="sudo vpn toggle"
alias qmodbus='qmodbus/build/qmodbus & exit 0'
alias librum='flatpak run com.librumreader.librum & exit 0'

export CMAKE_PATH=/usr/bin/cmake
