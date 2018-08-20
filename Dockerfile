FROM ansible/ubuntu14.04-ansible

ENV ANSIBLE_HOST_KEY_CHECKING=False

RUN apt-get install -y sshpass
