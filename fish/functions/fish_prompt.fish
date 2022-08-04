function fish_prompt --description 'hoveyfish'
  # echo (pwd) '>' (set_color normal)
  # set_color blue
  # date 
  set_color yellow
  printf '%s%s%s@%s%s%s%s%s> ' (set_color yellow) $USER (set_color cyan) (set_color purple) (prompt_hostname) (set_color yellow) (pwd) (set_color red)
end
