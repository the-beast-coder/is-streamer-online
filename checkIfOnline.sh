[ "$(curl --silent "https://www.twitch.tv/$1" | grep thumbnailUrl)" ] && echo "Ok is indeed online"

