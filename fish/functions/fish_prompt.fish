function fish_prompt --description 'hoveyfish'
  # echo (pwd) '>' (set_color normal)
  # set_color blue
  # date 
  set_color yellow
  printf '%s%s%s@%s%s %s%s%s > ' (set_color cyan) $USER (set_color yellow) (set_color purple) (prompt_hostname) (set_color yellow) (pwd) (set_color normal)
end
