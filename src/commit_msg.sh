#!/usr/bin/env sh

cd $GITHUB_WORKSPACE

MSG=$(git log -n 1 --pretty=format:%s $GITHUB_SHA)
echo "::set-output name=message::${MSG}"
