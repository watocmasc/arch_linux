#
# ~/.bashrc
#

output=$(python battery.py)
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1="[ \[\e[35m\]B:$output\[\e[0m\] \[\e[93m\]\A\[\e[0m\] ]:\[\e[94m\]\w\[\e[0m\] \[\e[32m\]\$ \[\e[0m\]"

alias upd='sudo pacman -Syu'
alias delfile='sudo rm -r'
alias delpack='sudo pacman -Rscun'
alias keyboard='setxkbmap us,ru -option 'grp:alt_shift_toggle''
alias nouse='sudo pacman -Rns $(pacman -Qdtq) || sudo pacman -Scc'
alias setup='sudo pacman -S'
alias bye='sudo shutdown now'
alias restart='sudo reboot now'
alias mak='makepkg -si'
alias grubach='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias packs='pacman -Qe'
