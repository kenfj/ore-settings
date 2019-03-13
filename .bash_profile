
export HISTSIZE=50000
export HISTCONTROL=ignoredups
export PROMPT_COMMAND="history -a"

alias ls='ls -G -F'

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias tree='tree -L 3 --filelimit 8'
alias treedir='tree -d'

export LANG=ja_JP.UTF-8

export PATH="~/bin:$PATH"

# export PATH="/usr/local/opt/sqlite/bin:$PATH"
# export PATH="/usr/local/opt/gettext/bin:$PATH"
# export PATH="/usr/local/opt/openssl/bin:$PATH"

export CDPATH=.:~/Documents/github

function cd {
    builtin cd "$@"
    if [ -f "Pipfile" ] ; then
        pipenv shell
    fi
}

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# https://docs.aws.amazon.com/ja_jp/cli/latest/userguide/cli-command-completion.html
complete -C '/usr/local/bin/aws_completer' aws

# https://qiita.com/acevif/items/abb155d1e0517b30242a
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'


# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# https://unix.stackexchange.com/questions/105958/terminal-prompt-not-wrapping-correctly
# https://qiita.com/koyopro/items/3fce94537df2be6247a3
if type __git_ps1 > /dev/null 2>&1 ; then
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWSTASHSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  GIT_PS1_SHOWUPSTREAM="auto"
  GIT_PS1_SHOWCOLORHINTS=true
  export PS1='\[\033[00m\]\[\033[36m\]\h\[\033[00m\]:\W\[\033[32m\]$(__git_ps1 [%s])\[\033[00m\]\$ '
fi

# pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# for pip install --user hoge
USER_BASE_PATH=$(python -m site --user-base)
export PATH="$USER_BASE_PATH/bin:$PATH"

# pipenv
export PIPENV_VENV_IN_PROJECT=true
eval "$(pipenv --completion)"

# nodenv
eval "$(nodenv init -)"

# go lang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# rbenv
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export JAVA_HOME=$(/usr/libexec/java_home)

eval "$(hub alias -s)"

gointo() { docker exec -ti $1 bash; }
