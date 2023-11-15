function fish_prompt --description 'hoveyfish'
  # echo (pwd) '>' (set_color normal)
  # set_color blue
  # date 
  # color 62A is eggplant, kind of a dark purple, which is nice
  # https://fishshell.com/docs/current/cmds/set_color.html
  set_color yellow
  printf '%s%s %s%s%s@%s%s%s%s%s> ' \
	  (set_color green) \
	  (fish_git_prompt) \
	  (set_color yellow) $USER \
	  (set_color cyan) \
	  (set_color 62A) (prompt_hostname) \
	  (set_color yellow) (pwd) \
	  (set_color red)
end
