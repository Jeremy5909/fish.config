if status is-interactive
    set fish_greeting
    if not set -q TMUX
        exec tmux
    end
end

set -gx fish_prompt_pwd_dir_length 0
