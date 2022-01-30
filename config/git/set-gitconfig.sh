#!/usr/bin/env bash

# Name
git config --global user.name "Dmitry Fisenko"

# Set git global settings
git config --global push.default simple
git config --global core.autocrlf false
git config --global core.whitespace cr-at-eol
git config --global pull.rebase true
git config --global rebase.autoStash true
git config --global status.short true
git config --global status.branch true
git config --global branch.autoSetupMerge true
git config --global init.defaultBranch master

# Set aliases in .gitconfig
git config --global alias.a "!git status --short | peco | awk '{print $2}' | xargs git add"
git config --global alias.d "diff"
git config --global alias.co "checkout"
git config --global alias.ci "commit"
git config --global alias.ca "commit -a"
git config --global alias.ps "!git push origin $(git rev-parse --abbrev-ref HEAD)"
git config --global alias.pl "!git pull origin $(git rev-parse --abbrev-ref HEAD)"
git config --global alias.st "status"
git config --global alias.br "branch"
git config --global alias.ba "branch -a"
git config --global alias.bm "branch --merged"
git config --global alias.bn "branch --no-merged"
git config --global alias.df "!git hist | peco | awk '{print $2}' | xargs -I {} git diff {}^ {}"
git config --global alias.type "cat-file -t"
git config --global alias.dump "cat-file -p"
git config --global alias.find "!f() { git log --pretty=format:\"%h %cd [%cn] %s%d\" --date=relative -S'pretty' -S\"\$@\" | peco | awk '{print \$1}' | xargs -I {} git diff {}^ {}; }; f"

# Fancy Logs
git config --global alias.hist "log --pretty=format:\"%Cgreen%h %Creset%cd %Cblue[%cn] %Creset%s%C(yellow)%d%C(reset)\" --graph --date=relative --decorate --all"
git config --global alias.llog "log --graph --name-status --pretty=format:\"%C(red)%h %C(reset)(%cd) %C(green)%an %Creset%s %C(yellow)%d%Creset\" --date=relative"
git config --global alias.l 'log --oneline --graph --decorate --all'
git config --global alias.l1 "log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(blue)<%an>%Creset%C(yellow)%d%Creset' --all"
git config --global alias.l2 "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
git config --global alias.l3 "log --format='%C(bold cyan)%h%Creset %s %Cgreen(%cr) %C(blue)<%an>%Creset%C(yellow)%d%Creset'"

if [[ -z $(git config --global --get user.email) ]]; then
  START="\033[96m\033[1m"
  END="\033[0m"
  echo -e "!!!\n\n${START}Git Email not set, please configure!\n\ngit config --global user.email 'test@email.com'\n\n!!!${END}"
fi

# Delta
git config --global pager.diff delta
git config --global pager.log delta
git config --global pager.reflog delta
git config --global pager.show delta

git config --global delta.plus-style 'syntax #012800'
git config --global delta.plus-emph-style 'syntax #1B421A'
git config --global delta.minus-style 'syntax #340001'
git config --global delta.minus-emph-style 'syntax #4E1A1B'

git config --global delta.file-decoration-style 'blue box'
git config --global delta.hunk-header-style 'file line-number syntax'

git config --global delta.navigate 'syntax #340001'
git config --global delta.navigate true
git config --global delta.syntax-theme 'Solarized (dark)'
git config --global delta.line-numbers true

git config --global interactive.diffFilter 'delta --color-only'
