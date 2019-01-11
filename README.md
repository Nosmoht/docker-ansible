Ansible Docker Container
==========

- [Introduction](#introduction)
- [Usage](#Usage)

# Introduction

Docker container with Ansible inside.

Following components can be used
- Ansible
- Ansible Lint

Additional Python packages that are installed
- netaddr (packages for network addresses)
- PyCrypto (cryptographic package)
- requests (Python HTTP for Humans)
- pydns (Python DNS Utilities)

# Usage
Run Ansible add-hoc:
```shell
docker run --rm -v "$(pwd):/ansible" nosmoht/ansible:2.7.5 ansible -m <module> -i <inv> -a <additional-parans> ...
```

Run Ansible Playbook:
```shell
docker run --rm -v "$(pwd):/ansible" nosmoht/ansible:2.7.5 ansible-playbook <playbook> -i <inv> ...
```

Run Ansible Lint:
```shell
docker run --rm -v "$(pwd):/ansible" nosmoht/ansible:2.7.5 ansible-lint <playbook> ...
```

