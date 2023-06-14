#!bin/bash
set -- $(getopt ab:cd "$@")
stop=false
while [ -n "$1" ]
do
        case "$1" in
                -d) 
                  stop=true
                  echo $stop;;
                --) shift
                        break;;
                *) echo "$1 is not an option";;
        esac
        shift
done



exist=`docker ps -q -f  name=feedback-app`
if [ "$exist" ]
then
  docker stop feedback-app
else 
fi


if [ "$stop" = true ]
then
else
echo "DOCKER START"
docker run -d --rm -p 3000:80 \
--name feedback-app -v feedback:/app/feedback \
-v "/Users/eltov/Documents/lecture/docker/data-volumes-02-added-dockerfile:/app:ro" \
-v /app/node_modules \
-v /app/temp feedback-node:volumes
fi