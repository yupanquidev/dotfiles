# ls
alias ls="lsd"
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'

# tree
alias tree="ls --tree"

# cat
alias cat="batcat"

# pnpm
alias pn="pnpm"
alias px="pnpm dlx"
alias pnd="pnpm run dev"
alias pni="pnpm install"
alias pnu="pnpm update"

# git
## add & commit
alias g="git"
alias gv="git --version"
alias ga="git add"
alias gaa="git add --all"
alias gapa="git add --patch"
alias gc="git commit -v"
alias gc!="git commit -v --amend"
alias gca="git commit -v -a"
alias gca!="git commit -v -a --amend"
alias gcan!="git commit -v -a --no-edit"
alias gcans!="git commit -v -a -s --no-edit --amend"
alias gcam="git commit -a -m"
alias gcsm="git commit -s -m"
alias gcmsg="git commit -m"
alias gcs="git commit -S"

## checkout & branch
alias gs="git switch"
alias gsd="git switch dev"
alias gsm="git switch main"
alias gsb="git switch -b"
alias gco="git checkout"
alias gcd="git checkout dev"
alias gcm="git checkout main"
alias gcb="git checkout -b"
alias gb="git branch"
alias gbr="git branch -r"
alias gba="git branch -a"
alias gbnm="git branch --no-merged"
alias ggsup="git branch --set-upstream-to=origin/"

## logs
alias gl="git log"
alias glg="git log --stat --max-count=10"
alias glgg="git log --graph --max-count=10"
alias glgga="git log --graph --decorate --all"
alias glo="git log --oneline --decorate --color"
alias glog="git log --oneline --decorate --color --graph"
alias glp="git log --pretty=$1"

## clone, push, fetch, pll & merge
alias gcl="git clone --recursive"
alias gcld="git clone --depth 1"
alias gp="git push"
alias ggp="git push origin \$(git rev-parse --abbrev-ref HEAD)"
alias gsup="git push --set-upstream origin \$(git rev-parse --abbrev-ref HEAD)"
alias gpoat="git push origin --all && git push origin --tags"
alias gf="git fetch"
alias gfa="git fetch --all --prune"
alias gfo="git fetch origin"
alias ggl="git pull"
alias gpull="git pull origin \$(git rev-parse --abbrev-ref HEAD)"
alias gpur="git pull --rebase origin \$(git rev-parse --abbrev-ref HEAD)"
alias glum="git pull upstream master"
alias gup="git pull --rebase"
alias gpnp="git pull origin \$(git rev-parse --abbrev-ref HEAD) && git push origin \$(git rev-parse --abbrev-ref HEAD)"
alias gm="git merge"
alias gmom="git merge origin/main"
alias gmt="git mergetool --no-prompt"
alias gmtvim="git mergetool --no-prompt --tool=vimdiff"
alias gmum="git merge upstream/main"
alias gma="git merge --abort"

## remotes
alias gr="git remote"
alias grv="git remote -v"
alias grmv="git remote rename"
alias grrm="git remote remove"
alias grset="git remote set-url"
alias grup="git remote update"

# work in progress
alias gst="git status"
alias gss="git status -s"
alias gsta="git stash save"
alias gstaa="git stash apply"
alias gstd="git stash drop"
alias gstl="git stash list"
alias grh="git reset HEAD"
alias grhh="git reset HEAD --hard"
alias gclean="git clean -fd"
alias gpristine="git reset --hard && git clean -dfx"
alias gwip="git add -A; git ls-files --deleted -z | xargs -r0 git rm; git commit -m "--wip--""
alias gunwip="git log -n 1 | grep -q -c "--wip--" && git reset HEAD~1"

## rewriting history
alias grbi="git rebase -i"
alias grba="git rebase --abort"
alias grbc="git rebase --continue"
alias grbs="git rebase --skip"
alias gcp="git cherry-pick"
alias gcpa="git cherry-pick --abort"
alias gcpc="git cherry-pick --continue"

## what changed?
alias gbl="git blame -b -w"
alias gbs="git bisect"
alias gbsb="git bisect bad"
alias gbsg="git bisect good"
alias gbsr="git bisect reset"
alias gbss="git bisect start"
alias gd="git diff"
alias gdca="git diff --cached"
alias gdt="git diff-tree --no-commit-id --name-only -r"
alias gdw="git diff --word-diff"
alias gwch="git whatchanged -p --abbrev-commit --pretty=medium"

## UI tools & SVN
alias gg="git gui citool"
alias gga="git gui citool --amend"
alias gk="gitk --all --branches"
alias gsd="git svn dcommit"
alias gsr="git svn rebase"
alias git-svn-dcommit-push="git svn dcommit && git push github main:svntrunk"

## miscellaneous
alias gcf="git config --list"
alias gcount="git shortlog -sn"
alias gignore="git update-index --assume-unchanged"
alias gunignore="git update-index --no-assume-unchanged"
alias gignored="git ls-files -v | grep '^[[:lower:]]'"
alias gts="git tag -s"
alias gvt="git verify-tag"
alias gtv="git tag | sort -V"
alias gsps="git show --pretty=short --show-signature"

# composer
alias c='composer'
alias ccp='composer create-project'
alias cdo='composer dump-autoload -o'
alias cdu='composer dump-autoload'
alias cget='curl -s https://getcomposer.org/installer | php'
alias cgr='composer global require'
alias cgrm='composer global remove'
alias cgu='composer global update'
alias ci='composer install'
alias co='composer outdated'
alias cod='composer outdated --direct'
alias cr='composer require'
alias crm='composer remove'
alias cs='composer show'
alias csu='composer self-update'
alias cu='composer update'
alias cuh='composer update --working-dir=$(composer config -g home)'

# laravel & php
alias artisan='php artisan'
alias bob='php artisan bob::build'

## Development
alias pas='php artisan serve'
alias pats='php artisan test'

## Database
alias pam='php artisan migrate'
alias pamf='php artisan migrate:fresh'
alias pamfs='php artisan migrate:fresh --seed'
alias pamr='php artisan migrate:rollback'
alias pads='php artisan db:seed'

## Makers
alias pamm='php artisan make:model'
alias pamc='php artisan make:controller'
alias pams='php artisan make:seeder'
alias pamt='php artisan make:test'
alias pamfa='php artisan make:factory'
alias pamp='php artisan make:policy'
alias pame='php artisan make:event'
alias pamj='php artisan make:job'
alias paml='php artisan make:listener'
alias pamn='php artisan make:notification'
alias pampp='php artisan make:provider'
alias pamcl='php artisan make:class'
alias pamen='php artisan make:enum'
alias pami='php artisan make:interface'
alias pamtr='php artisan make:trait'

## Clears
alias pacac='php artisan cache:clear'
alias pacoc='php artisan config:clear'
alias pavic='php artisan view:clear'
alias paroc='php artisan route:clear'
alias paopc='php artisan optimize:clear'

## queues
alias paqf='php artisan queue:failed'
alias paqft='php artisan queue:failed-table'
alias paql='php artisan queue:listen'
alias paqr='php artisan queue:retry'
alias paqt='php artisan queue:table'
alias paqw='php artisan queue:work'
