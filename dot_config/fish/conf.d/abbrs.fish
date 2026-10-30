abbr -a -- sm 'smerge .'
abbr -a --set-cursor gcobvr "git checkout -b vr/%"
abbr -a --set-cursor ghpc "./gradlew spotlessApply;git commit -a -m '%';git push;gh pr create -f;gh pr merge --auto -md"
abbr -a --set-cursor ghpcc "./gradlew spotlessApply;git commit -a -m '%';git push;gh pr create -f --base candidate;gh pr merge --auto -md"
