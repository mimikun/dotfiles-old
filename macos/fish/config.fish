# env
set -x PATH /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin

#eval (starship init fish)

# language
set -x LANG ja_JP.UTF-8
set -x LC_ALL ja_JP.UTF-8

# opencv
set -x PATH /usr/local/opt/opencv3/bin:$PATH

# Rust
set -x PATH $HOME/.cargo/bin:$PATH

# Golang
#set -x GOPATH $HOME/go
set -x -U GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# SQLite
set -x PATH /usr/local/opt/sqlite/bin:$PATH

# OpenSSL
set -x PATH /usr/local/opt/openssl@1.1/bin:$PATH

# anyenv
set -x PATH $HOME/.anyenv/bin:$PATH
anyenv init - fish | source

#imagemagick
set -x PATH /usr/local/opt/imagemagick@6/bin:$PATH

#ghq cd command
#alias g='cd $(ghq root)/$(ghq list | peco)'

# ghq repo
set GITHUB_REPO $HOME/.ghq/github.com/mimikun
set GITLAB_REPO $HOME/.ghq/gitlab.com/mimikun
set BITBUCKET_REPO $HOME/.ghq/bitbucket.org/mimikun

# alias
alias mkdir='mkdir -p'

# browser
set -x BROWSER "open -a '$MY_BROWSER'"
set -x MY_BROWSER "Brave Browser"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mimikun/google-cloud-sdk/path.fish.inc' ]; . '/Users/mimikun/google-cloud-sdk/path.fish.inc'; end

# npm config
set -x NPM_PACKAGES "$HOME/.npm-packages"

set -x PATH $NPM_PACKAGES/bin $PATH

set -x MANPATH $NPM_PACKAGES/share/man $MANPATH


thefuck --alias | source

alias f fuck
alias ls exa
