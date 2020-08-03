function update_various --description 'Update various things'

  function __help_message
    echo "Usage: update_various [-ah] "

    echo "         -a --all      Update all"
    echo "         -h --help     Print this help"
  end

  set -l options 'a/all' 'h/help'
  argparse -n update_various $options -- $argv
  or return 1
  
  if set -lq _flag_help
    __help_message
    return
  end

  sudo uname > /dev/null
  if test $status != 0
    return
  end

  echo "Upgrade AUR packages..."
  yay
  echo "Cleaning  caches..."
  yes | yay -Sc
  echo "Upgrade Rust toolchains..."
  rustup update
  echo ""

  function __rust_tool_update
    cargo install du-dust; sleep 5;
    cargo install procs; sleep 5;
  end

  if set -lq _flag_all
    echo "Upgrade Rust nightly toolchains..."
    rustup update nightly
    fisher self-update
    __rust_tool_update
  end  
end
