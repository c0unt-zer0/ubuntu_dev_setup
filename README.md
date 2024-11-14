Setup dev environment on Ubuntu
===============================

This project contains an ansible playbook to setup a clean Ubuntu installation
with my preferred tools and configurations.

In addition there is a script to create a tar file of files to transfer to
a new machine when changing computers.

The playbook is executed with the following command:

```bash
$ ansible-playbook -c local -i "localhost," -K setup.yml
```
or by using the script
```bash
$ ./setup.sh
```

Other things to remember to transfer when changing computers:
- Stored passwords in chrome

On the new machine, remember to do the following manually:
- Import stored passwords in chrome
- Untar the transfer bundle in the home directory
- Start neovim to have lazy download all plugins
- Authenticate Copilot in neovim

TODO:
- Add installation of chrome and virt-manager to playbook
- Add kitty icat command to show bazel deps in terminal
- Install git-toprepo

## Tools

Currently the following tools are installed and setup:
- Bash-it
  - With powerline-multiline theme and gitstatus plugin
- Kitty
- Neovim
- Ranger
- Fzf with git extensions integrated in bash and also used in neovim via
  FzfLua.

Additionally my neovim configuration will be fetched and setup which contains
my preferred plugins.

The main idea of this setup is to have a tiling environment without requiring
tmux or a tiling window manager.
This is achieved by using kitty as the terminal.
Though in addition configuration is done to have consistent keybindings for
movement between neovim windows and kitty windows. Also gnome keybindings are
modified to use easier to reach (more vim like) keybindings to switch workspaces
and to move windows between workspaces. See tasks/gnome-customization.yml for
more details.
