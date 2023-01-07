# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#environment variables
export EDITOR=gedit #default editor

#prompt
#export PS1=">>\[\e[34m\]\u\[\e[m\]@\[\e[35m\]\h\[\e[m\][\[\e[0m\]\#\[\e[0m\]]\[\e[31m\]\w\[\e[m\]>>  " #has number of commands
export PS1=">>\[\e[34m\]\u\[\e[m\]@\[\e[35m\]\h\[\e[m\][\[\e[0m\]\j\[\e[0m\]]\[\e[31m\]\w\[\e[m\]>>  " #has number of jobs running

#alias's
alias ..='cd ..'
alias l='ls --color'
function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && l
}
alias bjobs='jobs -p'
alias bkill='kill'
alias reload='source ~/.bashrc'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
