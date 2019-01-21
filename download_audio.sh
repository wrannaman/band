TRIANGLES='
                                =      =
                               =  =   =  =
                              =    = =    =
                             =     = =     =
                            =     =   =     =
                           =     =     =     =
                          =====================
 _       __  ____    ___     _   __  _   __  ___     __  ___  ___     _   __
| |     / / / __ \  /   |   / | / / / | / / /   |   /  |/  / /   |   / | / /
| | /| / / / /_/ / / /| |  /  |/ / /  |/ / / /| |  / /|_/ / / /| |  /  |/ /
| |/ |/ / / _, _/ / ___ | / /|  / / /|  / / ___ | / /  / / / ___ | / /|  /
|__/|__/ /_/ |_| /_/  |_|/_/ |_/ /_/ |_/ /_/  |_|/_/  /_/ /_/  |_|/_/ |_/
'

if [ -z "$1" ]
then
    printf "\nPlease enter a song name \nfor example ./download_audio.sh 0.0.19\n\n"
else
    cd $1
    if [ -f $1.zip ]; then
        echo "$1.zip already exists... stopping"
    else
      echo "${TRIANGLES}"
      echo "Downloading audio files for $1"
      wget https://s3.us-west-1.wasabisys.com/wrannaman/$1.zip
      echo "Download Complete"
      unzip $1.zip
      rm -rf __MACOSX
      echo "Unzip Complete"
      echo "============================= DONE ========================================"
    fi
    cd ../
fi
