- Edit these files before running
  - `hosts`
  - `vars.yml`
  - `playbook.yml`

- Run commands

```shell
make install-tools
make check-localhost
make system-opensuse-tumbleweed
```

- After running

  - SSH
    - Set up private and public keys

  - ZSH
    - Run `source ~/commands.sh` to add frequently used commands

- Ansible Overview

  - https://docs.ansible.com/ansible/latest/user_guide/playbooks_best_practices.html#directory-layout
  - https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html#variable-precedence-where-should-i-put-a-variable
  - https://docs.ansible.com/ansible/latest/user_guide/intro_patterns.html#common-patterns
  - https://docs.ansible.com/ansible/2.7/user_guide/intro_inventory.html#splitting-out-host-and-group-specific-data

```
                                               +--------+--------+
                                               |        | Task 1 |
                                       +-------+ Play 3 | Task 2 |
                                       |       |        | Task 3 |
                                       |       +-----------------+
                                       |                ^
                                       |                |
                                       |                |
+-----------------------+              |          +-----+------+                         +------------------------+
|        DBGroup        |              |          |            |                         |        WEBGroup        |
+-----------------------+              |          |  PLAYBOOK  |                         +------------------------+
| Host: db1.example.com |              |          |            |                         | Host: web1.example.com |
| Host: db2.example.com +<-------------+          +-+--------+-+                         | Host: web2.example.com |
| Host: db3.example.com |                           |        |                           +------------+-----------+
+-----------+-----------+                           |        |                                        ^
            ^                                       |        | contains play                          |
            |     +---------------------------------+        +---------------------------------+      |
            |     |                                                                            |      |
            |     |                                                                            |      |has host group
            |     v                                                                            v      |
  +---------+-----+---+                       +------------+--------+                      +---+------+---------+
  |                   | has role              |            | Task 1 |                      |                    |
  |  Play 1 (for DB)  +------+--------------->+ CommonRole | Task 2 +<--------------+------+  Play 2 (for WEB)  |
  |                   |      |                |            | Task 3 |               |      |                    |
  +-------------------+      |                +------------+--------+               |      +--------------------+
                             |                                                      |
                             |      +--------+--------+   +---------+--------+      |
                             |      |        | Task 1 |   |         | Task 1 |      |
                             +----->+ DBRole | Task 2 |   | WEBRole | Task 2 +<-----+
                                    |        | Task 3 |   |         | Task 3 |
                                    +--------+--------+   +---------+--------+
```
