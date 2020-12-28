if docker ps -f name=ndk -q | grep '^';then
  docker exec -it ndk bash
else
  docker run -it --name ndk --rm -v "$HOME/workspace":/root/workspace druggeri/ndk
fi
