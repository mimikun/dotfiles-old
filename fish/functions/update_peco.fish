function update_peco --description 'Update peco'
    echo "Update peco"
    if read_confirm
        set OLD_VERSION (peco --version | cut -d ' ' -f 3)
        set VERSION (curl --silent https://api.github.com/repos/peco/peco/releases/latest | jq .tag_name -r)
        set DESTINATION /usr/local/bin/peco
        if test $OLD_VERSION != $VERSION
            set CURRENTDIR (pwd)
            cd /tmp && wget https://github.com/peco/peco/releases/download/$VERSION/peco_linux_amd64.tar.gz
            sleep 5
            cd /tmp && tar xvf peco_linux_amd64.tar.gz
            sleep 5
            cd $CURRENTDIR
            sudo cp /tmp/peco_linux_amd64/peco $DESTINATION
            sudo rm -rf /tmp/peco*
            sudo chmod 755 $DESTINATION
        else
            echo "No update required."
        end
    end
end
