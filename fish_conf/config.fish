# env
set -x PATH /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin
#set -x  PATH /usr/local/sbin:$PATH

# language
set -x LANG ja_JP.UTF-8
set -x LC_ALL ja_JP.UTF-8

# opencv
set -x PATH /usr/local/opt/opencv3/bin:$PATH

# Rust
set -x PATH $HOME/.cargo/bin:$PATH

# Golang
set -x GOPATH $HOME/go
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
