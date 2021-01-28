#!/bin/bash

protected_branch='master'

policy="\n\n[Policy] Never push code directly to the "$protected_branch" branch! (Prevented with pre-push hook.)\n\n"

current_branch=$(git branch --show-current)

if [ $current_branch = $protected_branch ]; then
  echo -e $policy
  exit 1
fi

exit 0