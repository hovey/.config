
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# 2021-07-18 Update Miniconda to Python 3.9
# eval /Users/sparta/opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/sparta/.ghcup/bin $PATH # ghcup-env

# 2022-02-17 
# https://github.com/oh-my-fish/theme-bobthefish/blob/master/functions/fish_prompt.fish
set -g theme_nerd_fonts yes

