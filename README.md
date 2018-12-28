[![pipeline status](https://gitlab.com/so61pi/ansible/badges/master/pipeline.svg)](https://gitlab.com/so61pi/ansible/commits/master)

- Edit these files before running
  - `hosts`
  - `roles/workstation/defaults/main.yml`

- SSH
  - Set up private and public keys

- ZSH
  - Run `source ~/commands` to add frequently used commands

- Firefox
  - Add-on
    - HTTPS Everywhere
    - KeePassXC-Browser
    - Dark Reader
    - Download all Images
    - LeechBlock
    - Mate Translate
    - Mute sites by default
    - To Google Translate
    - uBlock Original
  - https://gitlab.com/so61pi/examples/tree/master/snippets/firefox-config

- Golang
  - Set up GOPATH
    - In openSUSE, it is already set up by `/etc/profile.d/go.sh`
    - https://github.com/golang/go/wiki/SettingGOPATH

- Git
  - Run `sudo chattr +i ~/.gitconfig` to prevent accidental changes to gitconfig
