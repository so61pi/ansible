[![pipeline status](https://gitlab.com/so61pi/ansible/badges/master/pipeline.svg)](https://gitlab.com/so61pi/ansible/commits/master)

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
print -s git config --global user.name "Example"
print -s git config --global user.email "example@example.com"

print -s rsync --delete --archive --recursive --verbose srcdir/ dstdir
print -s find /var/www/ -type f -name "*.html"
```
