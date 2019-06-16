[![pipeline status](https://gitlab.com/so61pi/ansible/badges/master/pipeline.svg)](https://gitlab.com/so61pi/ansible/commits/master)

- Edit these files before running
  - `hosts`

- Run commands

```shell
make env
make dry-run
make system-opensuse-tumbleweed
```

- After running

  - SSH
    - Set up private and public keys

  - ZSH
    - Run `source ~/commands` to add frequently used commands

  - Git
    - Run `sudo chattr +i ~/.gitconfig` to prevent accidental changes to `gitconfig`
