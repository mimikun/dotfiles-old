function update_docker_compose --description 'Update docker-compose'
  echo "Update docker-compose?"
  if read_confirm
    set OLD_VERSION (docker-compose version --short)
    set VERSION (curl --silent https://api.github.com/repos/docker/compose/releases/latest | jq .name -r)
    set DESTINATION /usr/local/bin/docker-compose
    if test $OLD_VERSION != $VERSION
      sudo curl -L https://github.com/docker/compose/releases/download/$VERSION/docker-compose-(uname -s)-(uname -m) -o $DESTINATION
      sudo chmod 755 $DESTINATION
    end
    echo "No update required."
  end
end
