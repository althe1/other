# some more aliases
alias ll='ls -alF'
# alias ll='ls -lah'
alias gg='git status -s'
alias wdi='cd ~/dev/WDI_DTLA_1'
alias rd='bundle exec rspec --format documentation'
alias r='bundle exec rspec'
alias p2='cd ~/dev/week6/day4/eventmap'
alias p3='cd ~/dev/week7/day5/ifs'
alias lh='open http://localhost:3000'
alias p4='cd ~/dev/week10/day6/beer-run/Beer-Run'
alias ios='open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app'

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
 
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac
 
# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
 
force_color_prompt=yes
 
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

unset color_prompt force_color_prompt
 
# If this is an xterm set the title to user@host:dir

 


 
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

export RBENV_ROOT="$(brew --prefix rbenv)"

eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#!/bin/bash

source ~/.git-completion.bash
source ~/.git-prompt.sh

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PS1=$LIGHT_GRAY'$(
    if [[ $(__git_ps1) =~ \*\)$ ]]
    # a file has been modified but not added
    then echo "'$YELLOW'"$(__git_ps1 " (%s)")
    elif [[ $(__git_ps1) =~ \+\)$ ]]
    # a file has been added, but not commited
    then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
    # the state is clean, changes are commited
    else echo "'$CYAN'"$(__git_ps1 " (%s)")
    fi)'$BLUE" \w"$GREEN": "

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin