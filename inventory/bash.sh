#!/bin/bash
docker run --name fedora -d pycontribs/fedora sleep 600000000
cd /root/ans/ansible
sleep 10
ansible-playbook site.yml -i inventory/prod.yml --ask-vault-pass
sleep 20
docker stop fedora
sleep 15
docker rm fedora
