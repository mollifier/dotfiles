function fish_user_key_bindings
  # ignore EOF
  # erase delete-or-exit and bind delete-char
  bind ctrl-d delete-char

  # z
  bind ctrl-x,b user_z_select_and_change_directory
  bind ctrl-x,ctrl-b user_z_select_and_change_directory

  # decors/fish-ghq
  bind ctrl-x,g __ghq_repository_search
  bind ctrl-x,ctrl-g __ghq_repository_search
end
