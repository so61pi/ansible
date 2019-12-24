print -s "docker build --tag <name:tag> ."
print -s 'docker run --env "TERM=xterm" --init --tty --volume $(pwd):/code --workdir /code <image> bash'
print -s "docker exec --tty --interactive --privileged <container> bash"
print -s "docker ps"
print -s "docker image ls"
print -s "docker container ls"
print -s "docker rmi <image>"
print -s "docker system prune"
print -s "docker system prune --all"
print -s "docker save -o file.tar image"
print -s "docker load -i file.tar"
print -s 'docker export "$(docker create --name ubuntu-18.04 ubuntu:18.04 true)" > ubuntu-18.04.tar'
print -s "docker rm ubuntu-18.04"

print -s "docker-compose up"
print -s "docker-compose up --build"
print -s "docker-compose down"
