CLICOLOR=1

alias ls='ls -G'
alias ll='ls -h1'

export PS1='\[\033[\[\033[0;96m\]\]\! \u in \W $ \[\033[0m\]'

gradlehome=/Users/Julia/Desktop/gradle-1.10
export gradlehome
export PATH=$PATH:$gradlehome/bin
