if docker ps -f name=pdk -q | grep '^';then
  docker exec -it pdk bash
else
  docker run -it --name pdk --rm -v "$HOME/workspace":/root/workspace druggeri/pdk
fi
