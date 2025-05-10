if status is-interactive
    zoxide init --cmd cd fish | source
    set fish_greeting
    if not set -q TMUX
        exec tmux
    end
end

# Created by `pipx` on 2024-07-17 01:40:00
set PATH $PATH /home/jeremy/.local/bin

fish_ssh_agent

set -gx fish_prompt_pwd_dir_length 0
