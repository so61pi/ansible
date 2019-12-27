ifdef CICD
ANSIBLEEX := -e "ansible_become_password=r00T15243"
else
ANSIBLEEX := --ask-become-pass
endif

.PHONY: install-tools
install-tools:
	sudo zypper install git make python python-xml python-urllib3 ansible

.PHONY: system-opensuse-tumbleweed
system-opensuse-tumbleweed:
	ANSIBLE_CONFIG=ansible.cfg ansible-playbook -vvv $(ANSIBLEEX) playbook.yml
	tree --du -h -a -p -u -g -L 1 ~
	tree --du -h -a -p -u -g -L 4 ~/.config
	tree --du -h -a -p -u -g -L 4 ~/work
	tree --du -h -a -p -u -g -L 2 /root

.PHONY: env
env:
	ansible -m setup localhost
