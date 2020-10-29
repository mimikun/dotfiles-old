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

  echo "Upgrade APT repogitory list..."
  sudo apt update
  echo "Upgrade APT packages..."
  sudo apt upgrade -y
  echo "Cleaning APT caches..."
  sudo apt autoremove -y
  sudo apt-get clean
  echo "Upgrade snaps..."
  sudo snap refresh
  echo "Upgrade Rust stable toolchains..."
  rustup update stable
  echo ""

  if set -lq _flag_all
    echo "Upgrade Rust nightly toolchains..."
    rustup update nightly
    echo "Upgrade rust tools..."
    update_rust_tool
    tldr --update
    echo "Upgrade fisher..."
    fisher self-update
    echo "Upgrade deno..."
    deno upgrade
    echo "Update other tools..."
    update_docker_compose
    update_geckodriver
    update_peco
  end
  
  sleep 5
  
  if test -e /var/run/reboot-required
    echo "\"/var/run/reboot-required\" exists. Reboot the system?(recommend)"
    re_boot
  end
end
