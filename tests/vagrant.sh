#!/bin/bash
# Test VPN provisiones with Ansible

echo "Starting VM and provision with role"
vagrant destroy -f
vagrant up
