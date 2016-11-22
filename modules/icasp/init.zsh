#
# Defines icasp aliases.
#
# Authors:
#   icasp <icasp@*.*>
#

# Return if requirements are not found.
if (( ! $+commands[ping] )); then
  return 1
fi

#
# Aliases
#

# Reload rr
alias rr="exec zsh"

# Quick shortcuts
alias pg="ping www.google.fr"
alias ls="ls -h"
alias myaliases="grep alias ~/.zprezto/modules/$(whoami)/init.zsh"
alias myprezto="cd ~/.zprezto/modules/$(whoami)"

# Networking
alias myip="dig +short myip.opendns.org @resolver1.opendns.com"
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Fast App Opener
alias s="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

##### ------ alias clean / clear / sync / rm, all ; )
# Disk & Memory
alias ddclean="sudo rm -rfv /Volumes/*/.Trashes ; sudo rm-rfv ~/.Trash ; sudo rm -rfv /private/var/log/asl/*.asl"
alias memclean="sudo sync && sudo purge"

# Fowarding and proxying
alias mdoors="ssh -L 12445:172.31.14.15:3389 -L 12022:172.31.14.18:22 -L 12900:172.31.14.18:5900"
alias mproxy="ssh -C2qTnN -D 12480"

# Dev environments
alias zero-dev="source ~/WORK/dev/5j13/zero-inst/bin/activate"

# Docker admin aliases and functions
qcow='~/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/Docker.qcow2'
export qcow

alias dqcowstatus="file $qcow && du -hs $qcow"
alias dscreen="screen ~/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/tty"
