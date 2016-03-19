!#/bin.bash

dot_dir=~/dotfiles
files="tmux.conf vimrc"

for file in $files; do
    echo "Creating symlink to $file"
    ln -s $dot_dir/$file ~/.$file
done
