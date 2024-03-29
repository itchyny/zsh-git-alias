#!/usr/bin/env zsh

alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gcm='
  if git diff-index --quiet HEAD; then
    git checkout master 2>/dev/null ||
    git checkout main
  else
    git status
  fi'
alias gcd='
  if git diff-index --quiet HEAD; then
    git checkout develop 2>/dev/null ||
    git checkout staging 2>/dev/null ||
    git checkout master 2>/dev/null ||
    git checkout main
  else
    git status
  fi'

alias ga='git add'
alias gap='git add --patch'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gr='git rebase'
alias gri='git rebase --interactive'
alias gmd='git merge origin/develop'

gm() { git commit ${*:+--message="$*"} }
gam() { git commit --all ${*:+--message="$*"} }
gamend() { git commit --all --amend ${*:+--message="$*"} }

alias gf='git fetch'
alias gpl='git pull --prune'
alias gpo='git push origin'
alias gpot='git push origin --tags'
alias gpom='git push origin master'
