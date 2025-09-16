set fish_greeting

source ~/.hishtory/config.fish
source ~/.asdf/plugins/java/set-java-home.fish

set -gx HISHTORY_SERVER http://192.168.86.40:4758

set -gx ANDROID_HOME $HOME/Library/Android/sdk


if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_add_path /opt/homebrew/bin
    fish_add_path ~/.hishtory
    fish_add_path ~/bin
    fish_add_path $ANDROID_HOME/platform-tools
    fish_vi_key_bindings

end

# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims
