function update_geckodriver --description 'Update geckodriver'
    echo "Update geckodriver"
    if read_confirm
        set OLD_VERSION "v"(geckodriver -V | sed -n 1p | sed -e 's/ //g' |sed -e 's/geckodriver//g' | sed -e 's/(.*)//g')
        set VERSION (curl --silent https://api.github.com/repos/mozilla/geckodriver/releases/latest | jq .tag_name -r)
        set DESTINATION /usr/local/bin/geckodriver
        if test $OLD_VERSION != $VERSION
            curl -L https://github.com/mozilla/geckodriver/releases/download/$VERSION/geckodriver-$VERSION-linux64.tar.gz -o /tmp/geckodriver.latest.tar.gz
            sleep 5
            set CURRENTDIR (pwd)
            cd /tmp && tar xvf geckodriver.latest.tar.gz
            sleep 5
            cd $CURRENTDIR
            sudo cp /tmp/geckodriver $DESTINATION
            sudo rm -f /tmp/geckodriver*
            sudo chmod 755 $DESTINATION
        end
        echo "No update required."
    end
end
