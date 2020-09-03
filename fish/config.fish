# Global
set -x LANG en_US.UTF-8
set -x DISPLAY :0
set -x GHQ_ROOT $HOME/ghq
set -x FISH_CONFIG_DIR $HOME/.config/fish
set -x WORKSPACE $GHQ_ROOT/github.com/mimikun
set -x DOTFILES $GHQ_ROOT/github.com/mimikun/dotfiles
set -x PIPENV_VENV_IN_PROJECT 1
set -x TODAY (date +'%Y/%m/%d')
set -x WIN_HOME /mnt/c/Users/dzdzb 

alias f fuck
alias rm 'rm -i'
alias l1 'ls -1'
bind \cg gcd
alias ls exa
alias lt 'ls -T'

set -x PATH /usr/bin $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/sbin $PATH
set -x PATH $HOME/go/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH

set -x DENO_INSTALL $HOME/.deno
set -x PATH $DENO_INSTALL/bin $PATH

#Ubuntu
set -x PATH /bin $PATH
set -x PATH /usr/games $PATH
set -x PATH /usr/sbin $PATH
set -x PATH /usr/local/games $PATH
set -x PATH /sbin $PATH
set -x PATH /snap/bin $PATH
set -x PATH $HOME/.fzf/bin $PATH
set -x PATH $HOME/.local/bin/ $PATH
set -x PATH $HOME/.npm-global/bin $PATH
set -x PATH $HOME/.dotnet/tools/ $PATH
set -x PATH $HOME/.gem/ruby/2.7.0/bin/ $PATH
alias pip 'python3 -m pip'
alias vim 'nvim'

# delete duplicate path
# https://qiita.com/itkr/items/1b868d75e54802e8d11a 
set -x PATH (echo $PATH | tr ' ' '\n' | sort -u)