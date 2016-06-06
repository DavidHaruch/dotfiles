# Contents

* vimrc for vim
* tmux.conf for tmux
* bashrc for bash shell
* i3config for i3 window manager
* i3blocks.conf for i3blocks status bar
* dotfiles.sh bash script to make symlinks automatically

## Usage

Clone this repo, make sure the variable `dot_dir` in `dotfiles.sh` is the right directory. Make sure `files` in `dotfiles.sh` has the dotfiles you want to symlink into your home (~/) directory. Make `dotfiles.sh` able to run by `chmod +x dotfiles.sh`. I wouldn't try to use anything except the vimrc on anything but linux.

## Dependencies

The scripts inside use the following (obscure ones will have a link to source)

* [i3lock-color](https://github.com/Arcaena/i3lock-color)
* xautolock
* xbacklight
* xdotool
* tmux
* iwgetid (wireless-tools)
* redshift
* geoclue2
* rofi

