if docker ps -f name=tdk -q | grep '^';then
  docker exec -it tdk bash
else
  docker run -it --name tdk --rm -v "$HOME/go":/root/go --env CGO_ENABLED=0 druggeri/tdk
fi
