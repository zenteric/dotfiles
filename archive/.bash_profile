# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

alias ll='ls -l'

alias my='mysql -A -u admin -p`cat /etc/psa/.psa.shadow`'

alias sbx='cd /var/www/$USER'
alias ports='netstat -tulanp'
#alias webreload='sudo service apache2 restart'
alias meminfo='free -m -l -t'
alias sysl='sudo tail /var/log/syslog'

# Things that bother me in cli
## get rid of command not found ##
alias cd..='cd ..'
alias df='df -H'
alias c='clear'
alias lt='ls -lhart'

# Git
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdw='git diff --word-diff'
alias ga='git add'
alias ga.='git add .'
alias gp='git push'
alias gpo='git push origin'
alias gpl='git pull'
alias gc='git commit'
alias gb='git branch'
alias gm='git merge'
alias grb='git rebase'
alias gco='git checkout'

# VI
alias vi='vim'
