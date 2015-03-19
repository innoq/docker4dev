#! /bin/sh

# grab the json describing the latest version of activator
export val=$(curl https://typesafe.com/activator/latest)
# extract url to mini version
export url=$(echo $val | jq '.url' | tr -d '"')
export FILE="./downloads/"$(basename $url)

if [ -f $FILE ];
then
   echo "Using cached $FILE"
else
   echo "Downloading $FILE"
   wget --directory-prefix=./downloads $url
fi

# build the correspondig image
docker build -t jpreissler/activator .
