source ~/.bashrc
tmux source ~/.tmux.conf
bind -f ~/.inputrc

#this works for ubuntu at least
for i in {1..9}; do
  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-$i "['<Alt>$i']"
done

killall xbindkeys 2>/dev/null
xbindkeys
