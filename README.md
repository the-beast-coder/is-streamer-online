# Check if a twitch streamer is online or not
This is a shell script that is one line long that will run on all unix machines with curl installed. I am uploading this as I saw some other programs/scripts that did the same thing, but for some reason used over 5 mb to install?????? This is just one curl command that gets the streamers page, greps out "thumbnailUrl", if it does indeed find it, then it returns that the streamer is indeed online. If it does not then it returns nothing. I realized when getting the HTML, if "thumbnailUrl" is indeed on the streamers page, then that means he is live, if not, hes not live. Simple. Here is the code:
``` sh 
[ "$(curl --silent "https://www.twitch.tv/$1" | grep thumbnailUrl)" ] && echo "Ok is indeed online"
```

To use the code simply run the following:
``` sh
sh checkIfOnline.sh <streamer-name>
```

The script is a posix complient script and can be run by either bash or any other posix compliant shell.
