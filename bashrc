# General shortcuts
alias ll='ls -l'
alias la='ls -la'
alias m='mate'
alias ff='open -a /Applications/Firefox.app "$@"'
alias ch='open -a /Applications/Google\ Chrome.app "$@"'

#  Instant http server for local sharing
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'


# git shortcuts
alias gs='git status'
alias gai='git add --interactive'
alias gsvn='git svn'
alias gsup='gsvn fetch && gsvn rebase'
alias gsc='gsup && gsvn dcommit'
alias gf='git fetch'
alias gr='git rebase'
alias gup='git pull --rebase'
alias gp='gup && git push'

function gc {
    git commit -am "$1"
    gs
}


# SSH helpers for The Team server resources
alias prod2='ssh philhawksworth@dig-prod-02.theteam2004.lan'
alias dev7='ssh philhawksworth@dig-dev-07'
alias labs='ssh philhawksworth@labs.theteamdigital.com'


# Django virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

_virtualenvs ()
{
    local cur="${COMP_WORDS[COMP_CWORD]}"
    COMPREPLY=( $(compgen -W "`ls $WORKON_HOME`" -- ${cur}) )
}

complete -o default -o nospace -F _virtualenvs workon
complete -o default -o nospace -F _virtualenvs rmvirtualenv

alias pym='python manage.py'
pymt ()
{
    python manage.py $1 --settings=settings_test
}
