# Bootstrap your laptop with Ansible

## Install

```shell
./scripts/install-ansible-ubuntu.sh
# If the previous command ends with
# "Installation completed successfully"
ansible-playbook local.yaml
```

## Test stuff with Docker

```bash
d run -v $(pwd):/home/erik/ansible-bootstrap -it --entrypoint /bin/bash ubuntu
apt update && apt install sudo
adduser erik
./scripts/install-ansible-ubuntu.sh # 4, 2
```
