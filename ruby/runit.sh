if docker ps -f name=rdk -q | grep '^';then
  docker exec -it rdk bash
else
  docker run -it --name rdk --rm -v "$HOME/workspace":/root/workspace druggeri/rdk
fi
