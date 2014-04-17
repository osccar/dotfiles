# ------------------------------------------------------------------------------
#          FILE:  aliases.zsh
#   DESCRIPTION:  my zsh aliases
#        AUTHOR:  Oscar Carrero
#          DATE:  March 12, 2014
# ------------------------------------------------------------------------------

# System utilities
#
alias ll='ls -lahF'
alias lt='ll -t'
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
#
alias aliases="less $HOME/.dotfiles/zsh/aliases.zsh"
alias aliases-open="mvim HOME/.dotfiles/zsh/aliases.zsh"

# Super user
#
alias _='sudo'
alias please='sudo'

# Show history
#
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
#
alias fixopenwithdups='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user; killall Finder;'

# NGINX
#
alias nginx.start='launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist'
alias nginx.stop='launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist'
alias nginx.reload='nginx -s reload'
alias nginx.restart='nginx.stop && nginx.start'
alias nginx.logs.error='tail -250f /usr/local/var/log/nginx/error.log'
alias nginx.logs.access='tail -250f /usr/local/var/log/nginx/access.log'
alias nginx.logs.debug='tail -250f /usr/local/var/log/nginx/error-debug.log'

# PHP-FPM
#
alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php55.plist"
alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php55.plist"
alias php-fpm.restart='php-fpm.stop && php-fpm.start'
alias php-fpm.log='tail -200f /usr/local/var/log/php-fpm.log'

# MySQL
#
alias mysql.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.restart='mysql.stop && mysql.start'
alias mysql.status='mysql.server status'
