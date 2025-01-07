#!/bin/sh
if [ -x /usr/bin/fish ]; then
	fish -c "\
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish \
| source && fisher install jorgebucaran/fisher
"

  fish -c "fisher update"

  fish -c "tide configure --auto --style=Rainbow --prompt_colors='True color' --show_time=No --rainbow_prompt_separators=Angled --powerline_prompt_heads=Sharp --powerline_prompt_tails=Flat --powerline_prompt_style='One line' --prompt_spacing=Compact --icons='Few icons' --transient=No"
fi
