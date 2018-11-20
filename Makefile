ifdef CICD
ANSIBLEEX := ""
else
ANSIBLEEX := "--ask-become-pass"
endif


system-opensuse-tumbleweed:
	ANSIBLE_CONFIG=ansible.cfg ansible-playbook --verbose $(ANSIBLEEX) --extra-vars target_system=opensuse-tumbleweed site.yml
	tree -a -L 1 ~
	tree -a -L 4 ~/work

system-ubuntu-18.04:
	ANSIBLE_CONFIG=ansible.cfg ansible-playbook --verbose $(ANSIBLEEX) --extra-vars target_system=ubuntu-18.04 site.yml
	tree -a -L 1 ~
	tree -a -L 4 ~/work

dry-run:
	ansible-playbook --check site.yml

env:
	ansible -m setup localhost
