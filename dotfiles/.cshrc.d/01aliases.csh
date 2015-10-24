#
#    ls aliases
alias ls     'ls -Fx --color=auto'
alias ldirs  'find . \! -name "." -prune -type d -print | less'
alias lfils  'find . \! -name "." -prune -type f -print | less'
alias lexe   'ls -1 | grep "*"'
alias lless  'ls -Fa | less'
#
#    cd aliases
#
# These two lines put the entire path into the prompt...
#alias a     'cd \!*;set prompt="`hostname`-${cwd}:! >"'
#alias cd    'cd \!*;set prompt="`hostname`-${cwd}:! >"'
# ...these two use only the current directory.  
alias cd     'cd \!*;set prompt="`whoami`@`hostname`-${cwd:t}:! >"'
alias up     'cd ..'                       # move up 1 directory level
#
#    pushd maintains a stack of directories for easy return, popd removes
#    a directory from the stack.
#    b and y do pushd & popd while setting the prompt to the current directory.
#
alias y      'popd \!*;set prompt="`whoami`@`hostname`-${cwd:t}:! >"'
alias b      'pushd \!*;set prompt="`whoami`@`hostname`-${cwd:t}:! >"'
alias dv     'dirs -v'
#
#     general aliases
#
alias bu          'cp \!^ \!^.bak'         # backup a file
alias h           'history'                # convienent history
alias hgrep       'history | grep \!^'     #
alias rcpbg      '( \!* ) < /dev/null &'   # for preventing stopped jobs
alias unbu        'cp \!^.bak \!^'         #
#
alias histfilehere 'set histfile=`pwd`/history'
#
# git aliases
alias gsb git-show-branch

