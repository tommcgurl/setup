#Git Auto Complete stuff
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}
alias editbp='vim ~/.bash_profile'
alias pss='python -m SimpleHTTPServer'
alias dir='ls -la'
alias ll='ls -la'
alias ss='git status -s'
alias gca='git commit --amend' 
alias aa='git add .'
alias gc-='git checkout -'
alias gcm='git checkout master'
alias hardreset='git reset --hard'
alias getlasthash='git log -n 1 --pretty=format:"%H"'
alias fancydiff='git diff --color | diff-so-fancy'
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PATH=$PATH:/Users/gkarlin/.bin:/Users/gkarlin/scripts/fin
export NVM_DIR="/Users/tommcgurl/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
set completion-ignore-case on
set show-all-if-ambiguous on

