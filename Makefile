all:
	ansible-playbook --ask-become-pass --verbose site.yml

dry-run:
	ansible-playbook --check site.yml

env:
	ansible -m setup localhost
