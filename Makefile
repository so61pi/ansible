ifdef CICD
ANSIBLEEX := -e "ansible_become_password=r00T15243"
else
ANSIBLEEX := --ask-become-pass
endif


system-opensuse-tumbleweed:
	ANSIBLE_CONFIG=ansible.cfg ansible-playbook -vvv $(ANSIBLEEX) playbook.yml
	tree --du -h -a -p -u -g -L 1 ~
	tree --du -h -a -p -u -g -L 4 ~/.config
	tree --du -h -a -p -u -g -L 4 ~/work
	tree --du -h -a -p -u -g -L 2 /root

dry-run:
	ansible-playbook --check playbook.yml

env:
	ansible -m setup localhost
