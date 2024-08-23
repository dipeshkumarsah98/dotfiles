#!/bin/env sh
# to use these aliases in your terminal, you need to source this file
# source aliases.sh
#
#for my shell
alias ..='cd ..'
alias ...= 'cd ../../'

# copy command alias to set interactive copy
alias cp='cp -i -v '

# remove command made interactive
alias rm='rm -i'

#mv command with interactive
alias mv='mv -i'

# some git aliases
alias glol='git log --oneline --all --graph --decorate'

# aliases for vim
alias vi='nvim'
alias vim='nvim'
alias nvim='nvim'
alias nvmi='nvim'
alias nivm='nvim'

# aliases for ping
alias p8='ping 8.8.8.8'

# aliases for git
alias gst='git status'
alias gco='git checkout'
alias gci='git commit'
alias gcm='git commit -m'
alias gaa='git add .'
alias gpl='git pull'
alias gps='git push'
alias gbr='git branch'
alias gdf='git diff'
alias glog='git log'
alias gcl='git clone'
alias glol='git log --oneline --pretty --graph'

# aliases for tools
alias ll='ls -l'
alias la='ls -la'
alias rm='rm -i'
alias cp='cp -i -v'
alias mv='mv -i -v'
alias mkdir='mkdir -p'
alias grep='grep --color=auto'
alias df='df -h'
alias du='du -h'
alias free='free -h'
alias top='htop'
alias psg='ps aux | grep '

# bunch of nmcli aliases
alias nmdx='nmcli dev wifi connect'
alias lzd='lazydocker'

alias pacmans='pacman -Ss'
# search packages already installed
alias pacmanq='pacman -Qs'
#search display information about a given package
alias pacmansi='pacman -Si'
#for locally installed packages
alias pacmanqi='pacman -Qi'
#display list of files installed by a packages
alias pacmanl='pacman -Ql'
#packages that are no longer needed
alias pacmand='pacman -Qdt'

# btop alias
alias btop='btop -t'
