# for Dev Container

if test -d /command-history
  if test ! -d ~/.local/share/fish
    mkdir -p ~/.local/share/fish
  end
  if test -f ~/.local/share/fish/fish_history
    mv -f ~/.local/share/fish/fish_history ~/.local/share/fish/fish_history.bak
  end
  ln -s /command-history/.command_history ~/.local/share/fish/fish_history
end

