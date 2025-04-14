#!/bin/bash

asdf plugin add java https://github.com/halcyon/asdf-java.git
asdf install java zulu-17.56.15
asdf install java zulu-21.40.17
asdf install java zulu-23.32.11
asdf set --home java zulu-23.32.11

asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby 3.4.1
asdf set --home ruby 3.4.1

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf set --home nodejs latest
