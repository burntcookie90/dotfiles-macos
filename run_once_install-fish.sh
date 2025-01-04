#!/bin/sh
brew install fish-shell/fish-beta-4/fish

if [ -x /usr/bin/fish ]; then
	fish -c "\
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish \
| source && fisher install jorgebucaran/fisher
"

  fish -c "fisher update"
fi

