# if status is-interactive
    # Commands to run in interactive sessions can go here
# end

set -x PATH /usr/local/bin $PATH
# anyenv
set -x PATH $HOME/.anyenv/bin $PATH
eval (anyenv init - | source)

# nodenv
set -x NODENV_ROOT $HOME/.anyenv/envs/nodenv
set -x PATH $HOME/.anyenv/envs/nodenv/bin $PATH
set -gx PATH $NODENV_ROOT/shims $PATH

# starship
eval (starship init fish)

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

alias vim="nvim"

export EDITOR="nvim"

