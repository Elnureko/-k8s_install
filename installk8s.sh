#!/bin/bash
set -e
#ansible-playbook -i hosts clean.yml

ansible-playbook -i hosts kube-dependencies.yml
sleep 1
ansible-playbook -i hosts master.yml --become-user=ansible
sleep 1
ansible-playbook -i hosts worker.yml --become-user=asnible

