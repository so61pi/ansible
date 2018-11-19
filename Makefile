all:
	ANSIBLE_CONFIG=ansible.cfg ansible-playbook --ask-become-pass --verbose site.yml

cicd:
	ANSIBLE_CONFIG=ansible.cfg ansible-playbook --verbose site.yml

dry-run:
	ansible-playbook --check site.yml

env:
	ansible -m setup localhost
