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
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gr='git rebase -i'
alias gmd='git merge origin/develop'

alias gf='git fetch'
alias gpl='git pull -p'
alias gpo='git push origin'
alias gpot='git push origin --tags'
alias gpom='git push origin master'
