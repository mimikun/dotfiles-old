function update_various
  echo "Running brew update..."
  brew update
  echo "Running brew upgrade..."
  brew upgrade
  echo "Running brew cask upgrade..."
  brew cask upgrade
  echo "Running brew cleanup..."
  brew cleanup
  echo "Running anyenv update..."
  anyenv update
  echo "Running rustup update..."
  rustup update
end
