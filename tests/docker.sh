#!/bin/bash
# test Release provisiones with Ansible

ANSIBLE_ROLE="aplyca.VPN"
DOCKER_IMAGE="ansible/ubuntu14.04-ansible"

docker run -it --name test-${ANSIBLE_ROLE} -v `pwd`:/tmp/${ANSIBLE_ROLE} ${DOCKER_IMAGE} /tmp/${ANSIBLE_ROLE}/tests/test.sh
docker stop test-${ANSIBLE_ROLE} && docker rm test-${ANSIBLE_ROLE}
