FROM ubuntu:14.04
MAINTAINER Mauricio Sanchez <msanchez@aplyca.com>
LABEL Description="Release code with Ansible" Vendor="Aplyca" Version="0.9.1-001"


# Adding Ansible role
ADD . /tmp/aplyca.VPN
WORKDIR /tmp/aplyca.VPN

# Provision image
RUN ./build/provision.sh

# Create mount points for volumes
VOLUME ["/etc/varnish"]

# Start AWS service
ENTRYPOINT ["/bin/bash", "./build/entrypoint.sh"]
