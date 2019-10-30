#! /bin/bash

port=$1
if [ -z $port ]
then
	echo "No port provided... Defaulting to 4000"
	port=4000
fi

echo Server deploying on port $port

docker run --rm -it \
  --volume="$PWD:/srv/jekyll" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle" \
  -p ${port}:4000 jekyll/jekyll:3.8 \
  jekyll serve
