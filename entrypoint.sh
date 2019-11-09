#!/bin/sh

# Clone a git repository if specified and checkout a specific branch
# Attempt to update submodules it they exist

[ -n "$HUGO_SOURCE_REPO" ] && {
  git clone "$HUGO_SOURCE_REPO" .
  [ -n "$HUGO_SOURCE_BRANCH" ] && {
    git checkout "$HUGO_SOURCE_BRANCH"
  }
  git submodule sync && git submodule update --init
}

exec $@