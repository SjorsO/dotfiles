# For applying changes after editing this file
alias bashreload="source ~/.bash_aliases"

alias phpspec='vendor/bin/phpspec'
alias phpunit='vendor/bin/phpunit --colors=always'

alias artisan='php artisan'
alias art='php artisan'
alias mfs='php artisan migrate:fresh --seed'

# using the alias "test" caused issues with autocompletion on Ubuntu
alias t="phpunit"
alias ts="phpunit --stop-on-failure"
alias tf="phpunit --filter "
alias tsf="phpunit --stop-on-failure --filter "
alias tfs="phpunit --stop-on-failure --filter "

alias dusk="artisan dusk"
alias dusks="artisan dusk --stop-on-failure"
alias duskf="artisan dusk --filter= "
alias dusksf="artisan dusk --stop-on-failure --filter= "
alias duskfs="artisan dusk --stop-on-failure --filter= "

alias ..="cd .."
alias ...="cd ../.."

# Show the current branch in the terminal prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1) /'
}
export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\e[33m\]\$(parse_git_branch)\[\e[m\]\$ "

# Vagrant aliases for Windows
#
# _tilde_path_homestead="c:/users/sjors/homestead/"
# _tilde_filepath_homestead_yaml="c:/users/sjors/homestead/homestead.yaml"
# alias vup="(cd $_tilde_path_homestead && vagrant up)"
# alias vssh="(cd $_tilde_path_homestead && vagrant ssh)"
# alias vreload="(cd $_tilde_path_homestead && vagrant reload --provision)"
# alias vyaml="start $_tilde_filepath_homestead_yaml"
