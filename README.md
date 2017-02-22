Ansible Role VPN
====================

An Ansible role that install and configure VPN

[![Build Status](https://travis-ci.org/Aplyca/ansible-role-vpn.svg?branch=master)](https://travis-ci.org/Aplyca/ansible-role-vpn)
[![Circle CI](https://circleci.com/gh/Aplyca/ansible-role-vpn.svg?style=svg)](https://circleci.com/gh/Aplyca/ansible-role-vpn)

Ansible Role that VPN code on Debian/Ubuntu.

Requirements
------------

Use hash behavior for variables in ansible.cfg
See example: https://github.com/Aplyca/ansible-role-vpn/blob/master/tests/ansible.cfg
See official docs: http://docs.ansible.com/intro_configuration.html#hash-behaviour

Installation
------------

Using ansible galaxy:
```bash
ansible-galaxy install Aplyca.VPN
```
You can add this role as a dependency for other roles, add the role to the meta/main.yml file of your own role:
```yaml
dependencies:
  - { role: Aplyca.VPN }
```

Role Variables
--------------
See default variables: https://github.com/Aplyca/ansible-role-vpn/blob/master/defaults/main.yml

Dependencies
------------

None

Running feature provision
-------------------------

Use tags to run a specific feature in the provisioning, i.e: to update the users you can run the following command:

Update users:

```bash
ansible-playbook -i inventories/local playbooks.yml --tags vpn_users
```

Testing
-------
Using Vagrant:

```bash
tests/vagrant.sh
```

Using Docker:

```bash
tests/docker.sh
```

License
-------

MIT / BSD

Author Information
------------------

Mauricio Sánchez from Aplyca SAS (http://www.aplyca.com)
