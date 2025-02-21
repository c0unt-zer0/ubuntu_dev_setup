Setup dev environment on Ubuntu
===============================
<p>
    <img src="https://img.shields.io/github/license/c0unt-zer0/ubuntu_dev_setup" hspace="5" >
    <img src="https://github.com/c0unt-zer0/ubuntu_dev_setup/actions/workflows/ci.yml/badge.svg?event=push" hspace="5" >
</p>

This project contains an ansible playbook to setup a clean Ubuntu installation
with my preferred tools and configurations.

In addition there is a script to create a tar file of files to transfer to
a new machine when changing computers.

The playbook is executed with the following command:

```bash
$ ansible-playbook setup.yml
```

Other things to remember to transfer when changing computers:
- Stored passwords in firefox/chrome

On the new machine, remember to do the following manually:
- Untar the transfer bundle in the home directory

## Tools

Currently the following tools are installed and setup:
- Git
- Bazel
- Docker
- Emacs
- pyenv
