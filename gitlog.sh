#!/bin/bash
git config --global alias.logl "log --pretty=oneline"
git config --global alias.logg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %C(yellow)(%cN:%cE at %ci) %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
