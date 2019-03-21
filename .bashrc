# for bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

# git ps1
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[37m\][\[\033[36m\]\u\[\033[37m\]@ \[\033[32m\]\W\[\033[37m\]]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# hub alias
# see https://github.com/github/hub/blob/master/README.md#aliasing
eval "$(hub alias -s)"

# hub completion
if [ -f /path/to/hub.bash_completion ]; then
  . /path/to/hub.bash_completion
fi

# alias
alias ls='ls -G'
alias ll='ls -la'
