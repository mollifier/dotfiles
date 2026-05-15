# for Dev Container

if test -d /command-history
  set -x XDG_DATA_HOME /command-history
  if test ! -d /command-history/fish
    mkdir -p /command-history/fish
  end
  ln -s /command-history/fish/fish_history /command-history/.command_history
end

