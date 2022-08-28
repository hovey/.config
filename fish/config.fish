
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


# 2022-08-28 allow bash-type bang-bang operator to 
# repeat last command !!
# and repeat last argument !$
# Ref: https://superuser.com/questions/719531/what-is-the-equivalent-of-bashs-and-in-the-fish-shell
function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t -- $history[1]
            commandline -f repaint
        case "*"
            commandline -i !
    end
end

function bind_dollar
    switch (commandline -t)[-1]
        case "!"
            commandline -f backward-delete-char history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
end


