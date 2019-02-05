Ansible Docker Container
==========

- [Introduction](#introduction)
- [Usage](#Usage)

# Introduction

Docker container with Ansible inside.

Following components can be used
- Ansible
- Ansible Lint

Additional Python packages can be installed by adding them to [requirements.txt](requirements.txt).

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

