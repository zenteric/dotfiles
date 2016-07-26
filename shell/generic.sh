[ -e $HOME/.shell_local.sh ] && . $HOME/.shell_local.sh

# _generic
#export GREP_OPTIONS='--color=auto'

# colorize ls output
export CLICOLOR=''
export GREP_COLOR='3;32'
export PAGER='less -rFX'
export EDITOR='vim'

if ls --color=auto > /dev/null 2>&1
then
  alias ls="ls --color=auto"
fi
alias ll="ls -l"
alias l="ls -la"
alias l1h="ls -1t | head"
alias scat="egrep -v '^(\s*)?(#|$)' "
alias cd..="cd .."

# shell
function esl {
  if [ ! -z $ZSH_NAME ]
  then
    exec $ZSH_NAME -l
  else
    exec $SHELL -l
  fi
}
alias esl="exec $SHELL -l"

alias tree='tree -FC'
alias vundle_update='vim +BundleUpdate +BundleClean! +qall'

# ssh
function delkey {
  [ -z $1 ] && echo "supply deletion key" && return 2
  ssh-keygen -f "$HOME/.ssh/known_hosts" -R $1
}
