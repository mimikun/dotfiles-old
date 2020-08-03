function editorconfig --description 'Generate editorconfig'
  if not test -e .editorconfig
    echo ".editorconfig not exist."
    echo "Creating .editorconfig."
    cp $DOTFILES/.editorconfig-mimikun ./.editorconfig
  end
end

