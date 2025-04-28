if status is-interactive
    set fish_greeting

    zoxide init fish --cmd cd | source

    fzf --fish | source
    fastfetch

     if not set -q TMUX
         exec tmux
     end
end

pyenv init - | source

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

#set -g -x LIBRARY_PATH $LIBRARY_PATH /opt/homebrew/lib

set -gx HOMEBREW_PREFIX "/opt/homebrew";
set -gx HOMEBREW_CELLAR "/opt/homebrew/Cellar";
set -gx HOMEBREW_REPOSITORY "/opt/homebrew";
fish_add_path -gP "/opt/homebrew/bin" "/opt/homebrew/sbin";
! set -q MANPATH; and set MANPATH ''; set -gx MANPATH "/opt/homebrew/share/man" $MANPATH;
! set -q INFOPATH; and set INFOPATH ''; set -gx INFOPATH "/opt/homebrew/share/info" $INFOPATH;


set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/jherczeg27/.ghcup/bin $PATH # ghcup-env

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/Users/jherczeg27/.opam/opam-init/init.fish' && source '/Users/jherczeg27/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration
