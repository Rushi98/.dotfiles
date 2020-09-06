
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1="[\u \W]\$ "
#PS1='[\u@\h \W]\$ '
export PATH="/home/rushi/android-studio/bin":$PATH
# unlimited history
export HISTSIZE=-1
export VISUAL="vim"
export ANDROID_SDK_ROOT=/home/rushi/Android/Sdk
alias pwd='pwd -P'
export BROWSER=`which google-chrome-stable`
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias gdb='gdb -quiet'
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}
# export PATH="~/.gem/ruby/2.5.0/bin":$PATH
. /etc/profile.d/vte.sh
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias start-vpn='sudo systemctl start openvpn-client@protonvpn'
alias stop-vpn='sudo systemctl start openvpn-client@protonvpn'
alias merge-pdf='gs -q -sPAPERSIZE=a4 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite '

for script in package-management-aliases ffmpeg-scripts browser-tricks fetchie
do
	source "$HOME/.local/bin/$script"
done
