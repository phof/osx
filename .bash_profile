umask 002
export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Tweaks to ls
alias ls='ls -lahFG'

# Add Sublime Text 2.0 "subl" command line to the path and set it as the default editor on
# Mac OS X. to use simply add this to your ~/.bash_profile
# From https://gist.github.com/2569861
SUBLIME_BIN="/Applications/Sublime Text 2.app/Contents/SharedSupport/bin"
SUBLIME_CMD="subl"
if [ -x "${SUBLIME_BIN}/${SUBLIME_CMD}" ]; then
  export PATH="${SUBLIME_BIN}":$PATH
  export VISUAL="${SUBLIME_CMD} -w";
  export EDITOR="$VISUAL";
fi

# git bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Look in /usr/local/bin first
export PATH=/usr/local/bin:$PATH

# Android SDK
export PATH=${PATH}:/Users/<user>/Documents/android-sdk-macosx/tools
export PATH=${PATH}:/Users/<user>/Documents/android-sdk-macosx/platform-tools

# This loads RVM into a shell session.
[[ -s "/Users/<user>/.rvm/scripts/rvm" ]] && source "/Users/<user>/.rvm/scripts/rvm"