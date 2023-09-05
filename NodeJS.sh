#!/bin/bash

user=$1
domain=$2
ip=$3
home=$4
docroot=$5

#default script name
mainScript="src/index.js"
nodeDir="$home/$user/web/$domain/nodeapp"

mkdir $nodeDir
chown -R $user:$user $nodeDir

nodeVersion=""
nvmDir="/opt/nvm"
nodeInterpreter=""
envFile=""

#auto install dependences
if [ ! -d "$nodeDir/node_modules" ]; then
    echo "No modules found."
    cd $nodeDir && npm i
fi

#get init script form package.json
package="$nodeDir/package.json"

if [ -e $package ]
then
    mainScript=$(cat $package \
                | grep main \
                | head -1 \
                | awk -F: '{ print $2 }' \
                | sed 's/[",]//g' \
                | sed 's/ *$//g')
fi

#remove blank spaces
pmPath=$(echo "$nodeDir/$mainScript" | tr -d ' ')
runuser -l $user -c "node $pmPath"
