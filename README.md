# Bootstrap your laptop with Ansible

If your name is not `erik`, you have to rename some of this stuff.

## Install

```shell
./scripts/install-ansible-ubuntu.sh
# If the previous command ends with
# "Installation completed successfully"
ansible-playbook local.yaml
```

## Test stuff with Docker

```shell
d run -v $(pwd):/home/erik/ansible-bootstrap -it --entrypoint /bin/bash ubuntu
apt update && apt install sudo
adduser erik
./scripts/install-ansible-ubuntu.sh # 4, 2
```

## Update

Run from root of the project, copies your dot-files, then you commit.

```shell
./scripts/update-files.sh
```

If you add more dot-files, you need to update manually by looking at the occurrences of `bashrc`.
