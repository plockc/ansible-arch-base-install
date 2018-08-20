#!/bin/bash

set -euo pipefail

INVENTORY=${INVENTORY:-install-inventory-liva.yml}

docker build -t plockc/ansible-sshpass .

docker run -it -v $PWD:/ansible/ansible-arch-base-install \
  -v $PWD/install.yml:/ansible/install.yml \
  -v $PWD/${INVENTORY}:/ansible/inventory.yml \
  --workdir /ansible \
  plockc/ansible-sshpass \
    ansible-playbook --ask-pass -i inventory.yml install.yml "$@"
