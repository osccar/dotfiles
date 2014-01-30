# ------------------------------------------------------------------------------
#          FILE:  aliases.zsh
#   DESCRIPTION:  my zsh aliases
#        AUTHOR:  Oscar Carrero (osccar@gmail.com)
#       VERSION:  1.0
#       DATE:     January 29, 2014
# ------------------------------------------------------------------------------

# System utilities
alias ll='ls -lahF'
alias du='du -hc'
alias .=pwd
alias reload='exec $SHELL'
#alias rm='rm -iv'
alias rm=trash
alias mv='mv -iv'
alias cp='cp -iv'
alias cpr='cp -Riv'
alias hh='history'

# Aliases
alias aliases="cat $HOME/.dotfiles/zsh/aliases.zsh"
alias aliases-open="nano HOME/.dotfiles/zsh/aliases.zsh"

# Super user
alias _='sudo'
alias please='sudo'

# Show history
if [ "$HIST_STAMPS" = "mm/dd/yyyy" ]
then
    alias history='fc -fl 1'
elif [ "$HIST_STAMPS" = "dd.mm.yyyy" ]
then
    alias history='fc -El 1'
elif [ "$HIST_STAMPS" = "yyyy-mm-dd" ]
then
    alias history='fc -il 1'
else
    alias history='fc -l 1'
fi

# Fix multiple versions of apps in 'Open with...' menu in Finder
alias fixopenwithdups='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user; killall Finder;'

# Homebrew MySql
#alias mysql.up='mysql.server start'
#alias mysql.down='mysql.server stop'

# Ruby commands
#alias rspec='rspec --color --format doc'
