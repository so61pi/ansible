.PHONY: install-tools
install-tools:
	sudo zypper install git make python python-xml python-urllib3 ansible

.PHONY: check-localhost
check-localhost:
	ansible localhost -m setup

.PHONY: system-opensuse-tumbleweed
system-opensuse-tumbleweed:
	ANSIBLE_CONFIG=ansible.cfg ansible-playbook -vvv --ask-become-pass playbook.yml
	tree --du -h -a -p -u -g -L 1 ~
	tree --du -h -a -p -u -g -L 4 ~/.config
	tree --du -h -a -p -u -g -L 4 ~/work
	tree --du -h -a -p -u -g -L 2 /etc
	tree --du -h -a -p -u -g -L 2 /root
