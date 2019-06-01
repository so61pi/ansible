ifdef CICD
ANSIBLEEX :=
else
ANSIBLEEX := --ask-become-pass
endif


system-opensuse-tumbleweed:
	ANSIBLE_CONFIG=ansible.cfg ansible-playbook -vvv $(ANSIBLEEX) --extra-vars target_system=opensuse-tumbleweed site.yml
	tree -a -p -u -g -L 1 ~
	tree -a -p -u -g -L 4 ~/work
	tree -a -p -u -g -L 2 /root

dry-run:
	ansible-playbook --check site.yml

env:
	ansible -m setup localhost
