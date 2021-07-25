# dotfiles

- alacritty
- starship
- fish
  - oh-my-fish  
- nvim
  - ranger
  - pynvim
  - python 3
- tmux

```
# create symlink
for f in .??* ; do
  [[ "$f" == ".git" ]] && continue
  ln -snfv $HOME/dotfiles/"$f" $HOME
done
```
