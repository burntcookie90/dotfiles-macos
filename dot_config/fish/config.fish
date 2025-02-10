set fish_greeting

source ~/.hishtory/config.fish
source ~/.asdf/plugins/java/set-java-home.fish

set -gx HISHTORY_SERVER http://192.168.86.40:4758

set -gx ANDROID_HOME $HOME/Library/Android/sdk

if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_add_path /opt/homebrew/bin
    fish_add_path ~/.hishtory
    fish_add_path $ANDROID_HOME/platform-tools
    fish_vi_key_bindings
end
