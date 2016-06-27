ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -c ssh -i install-inventory-myth-db-vm.yml install-from-cd.yml --ask-pass -e vm:True
