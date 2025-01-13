#!/bin/bash

asdf plugin-add java https://github.com/halcyon/asdf-java.git
asdf install java latest:zulu-17
asdf install java latest:zulu-21
asdf install java latest:zulu-23
asdf global java latest:zulu-23
