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

# prompt
# pure-fish/pure configuration
set pure_enable_single_line_prompt true
set pure_begin_prompt_with_current_directory false
set pure_color_primary cyan
set pure_color_success brgreen
# Note: default value
# set pure_enable_single_line_prompt false
# set pure_begin_prompt_with_current_directory true
# set pure_color_primary blue
# set pure_color_success magenta
