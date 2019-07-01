ifdef CICD
ANSIBLEEX := -e "ansible_sudo_pass=r00T15243"
else
ANSIBLEEX := --ask-become-pass
endif


system-opensuse-tumbleweed:
	ANSIBLE_CONFIG=ansible.cfg ansible-playbook -vvv $(ANSIBLEEX) --extra-vars target_system=opensuse-tumbleweed site.yml
	tree --du -h -a -p -u -g -L 1 ~
	tree --du -h -a -p -u -g -L 4 ~/.config
	tree --du -h -a -p -u -g -L 4 ~/work
	tree --du -h -a -p -u -g -L 2 /root

dry-run:
	ansible-playbook --check site.yml

env:
	ansible -m setup localhost
