# install tmux configurations
sudo apt install xclip -y
cp tmux/.tmux.conf $HOME/
tmux source-file $HOME/.tmux.conf
