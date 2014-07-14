
# Override path to priotitize /usr/local/bin as suggested by Homebrew
export PATH=/usr/local/bin:$PATH
# add postgresql commando to PATH
export PATH=/Library/PostgreSQL/9.3/bin:/Library/PostgreSQL/9.3/bin/:/Library/PostgreSQL/9.3/:$PATH


# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Git stuff
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
# unstaged (*) and staged (+)
# If something is stashed then a '$' will be shown next to the branch name.

# Prompt
D=$'\e[1;37m'
PINK=$'\e[0;35m'
GREEN=$'\e[0;32m'
ORANGE=$'\e[0;33m'
# Black 0;30 Dark Gray 1;30
# Blue 0;34 Light Blue 1;34
# Green 0;32 Light Green 1;32
# Cyan 0;36 Light Cyan 1;36
# Red 0;31 Light Red 1;31
# Purple 0;35 Light Purple 1;35
# Brown 0;33 Yellow 1;33
# Light Gray 0;37 White 1;37

source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh
export PS1='${PINK}\u ${D}at ${ORANGE}\h ${D}in ${GREEN}\w $(__git_ps1)${D}\n$ '


#VirtualEnv & VirtualEnvWrapper settings

export WORKON_HOME=$HOME/Envs
export VIRTUALENVWRAPPER_HOOK_DIR="$HOME/Envs"
export PROJECT_HOME=$HOME/Work
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
source /usr/local/bin/virtualenvwrapper.sh


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

export DJANGO_COLORS="dark;http_success=blue,bold"

# Start an HTTP server from a directory, optionally specifying the port
function web_server() {
    local port="8000"
    python -m SimpleHTTPServer "$port"
}
function mail_server() {
    local port="1025"
    python -m smtpd -n -c DebuggingServer localhost:"$port"
}

