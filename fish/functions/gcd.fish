function gcd --wraps='cd (ghq list -p | fzf)' --description 'cd using ghq and fzf'
  ghq list -p | fzf | read select
  [ -n "$select" ]; and cd "$select"
  echo " $select"
  commandline -f repaint
end
