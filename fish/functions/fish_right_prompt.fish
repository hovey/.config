function fish_right_prompt
  set_color blue
  # date '+%Y%M%D_%H_%M'
  # echo -n (date +%Y.%M.%D.%H:%M:%S)
  echo (date +%Y-%m-%d) (date +%H:%M:%S)
  set_color normal
end
