# Global
export LANG=en_US.UTF-8
export DISPLAY='${ip route | awk "/default via / {print $3; exit}" 2>/dev/null}:0'
export GHQ_ROOT="$HOME/ghq"
export FISH_CONFIG_DIR=$HOME/.config/fish
export WORKSPACE=$GHQ_ROOT/github.com/mimikun
export DOTFILES=$GHQ_ROOT/github.com/mimikun/dotfiles
export PIPENV_VENV_IN_PROJECT=1
export TODAY=(date +'%Y/%m/%d')
export WIN_HOME=/mnt/c/Users/dzdzb

alias f="fuck"
alias ls="exa"
alias l1="ls -1"
alias lt="ls -T"
alias mkdir="mkdir -p"
alias rm="rm -i"
#bind \cg gcd

export PATH="/usr/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
export STARSHIP_CACHE="$HOME/.config/starship/cache"

#Ubuntu
export PATH="/bin:$PATH"
export PATH="/usr/games:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/games:$PATH"
export PATH="/sbin:$PATH"
export PATH="/snap/bin:$PATH"
export PATH="$HOME/.fzf/bin:$PATH"
export PATH="$HOME/.local/bin/:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.dotnet/tools/:$PATH"
export PATH="$HOME/.gem/ruby/2.7.0/bin/:$PATH"
export PATH="$HOME/depot_tools:$PATH"
export PATH="$HOME/.anyenv/bin:$PATH"

alias pip="python3 -m pip"
alias vim="nvim"

# delete duplicate path
# https://qiita.com/itkr/items/1b868d75e54802e8d11a

# starship config
eval "$(starship init zsh)"
