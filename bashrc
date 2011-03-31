# General shortcuts
alias ll='ls -l'
alias la='ls -la'
alias m='mate'

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
