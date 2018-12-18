[![pipeline status](https://gitlab.com/so61pi/ansible/badges/master/pipeline.svg)](https://gitlab.com/so61pi/ansible/commits/master)

- Edit these files before running
  - `hosts`
  - `roles/workstation/defaults/main.yml`

- SSH
  - Set up private and public keys

- Firefox
  - Add-on
    - HTTPS Everywhere
    - KeePassXC-Browser
    - Download all Images
    - LeechBlock
    - Mate Translate
    - Mute sites by default
    - uBlock Original
  - https://gitlab.com/so61pi/examples/tree/master/snippets/firefox-config

- Golang
  - Set up GOPATH
    - In openSUSE, it is already set up by `/etc/profile.d/go.sh`
    - https://github.com/golang/go/wiki/SettingGOPATH

- ZSH
  - Run following commands to save them to history
```shell
print -s sudo sh -c "'zypper update && zypper dist-upgrade && zypper ps -s'"
# print -s sudo sh -c "'apt update && apt upgrade && apt autoremove'"

print -s "git config --global user.name 'Example'"
print -s "git config --global user.email 'example@example.com'"
print -s "git clone <url>"
print -s "git clone --recurse-submodules <url>"
print -s "git reset <commit>"
print -s "git reset --hard <commit>"
print -s "git ls-files | grep a"
print -s git branch
print -s git branch --remote
print -s git diff
print -s git diff --staged
print -s git diff HEAD~3 HEAD -- file.txt
print -s git difftool
print -s git difftool --staged
print -s git log
print -s git log --graph
print -s git stash
print -s git stash pop
print -s git stash drop
print -s git stash list
print -s git submodule update
print -s git submodule update --recursive
print -s git submodule update --recursive --init
print -s git merge bugfix
print -s git merge --squash bugfix
print -s git clean -df
print -s git clean -xdf
print -s git reflog

print -s rsync --dry-run --delete --archive --recursive --progress --verbose srcdir/ dstdir
print -s rsync --delete --archive --recursive --progress --verbose srcdir/ dstdir

print -s "find dir/ -type f -name '*.log'"
print -s "find dir/ -type f -name '.*'"
print -s find dir/ -type f -empty -delete
print -s find dir/ -type f -executable
print -s find dir/ -type d -empty -delete
print -s find dir/ -user root

print -s "docker build --tag <name:tag> ."
print -s 'docker run --env "TERM=xterm" --init --tty --volume $(pwd):/code --workdir /code <image> bash'
print -s "docker exec --tty --interactive --privileged <container> bash"
print -s docker-compose up
print -s docker-compose up --build
print -s docker-compose down
print -s docker image ls
print -s docker container ls
print -s docker ps
print -s docker system prune
print -s docker system prune --all

print -s tar -cvf archived.tar dir/
print -s tar -xvf archived.tar
print -s tar -cvzf compressed.tar.gz dir/
print -s tar -xvzf compressed.tar.gz

print -s systemctl status

print -s systemctl status ssh.service
print -s systemctl start ssh.service
print -s systemctl stop ssh.service
print -s systemctl restart ssh.service
print -s systemctl enable ssh.service
print -s systemctl disable ssh.service

print -s systemd-analyze
print -s systemd-analyze blame
print -s systemd-analyze plot

print -s journalctl --unit ssh.service --follow
print -s journalctl --unit ssh.service --boot
print -s tail -F file.log

print -s free --human
print -s df --human-readable

print -s ip addr
print -s netstat -all -tcp -udp

print -s curl --proxy yourproxy:port -o google.html https://www.google.com/
print -s wget -O google.html https://www.google.com/
```

- Git
  - Run `sudo chattr +i ~/.gitconfig` to prevent accidental changes to gitconfig
