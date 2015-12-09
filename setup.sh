#!/bin/sh
cd /usr/local/.git/hooks
curl -O https://raw.githubusercontent.com/homeofmatt/commit-cheers/master/happykids.wav
printf 'toplevel_path=`git rev-parse --show-toplevel`\nafplay -v 0.1 $toplevel_path/.git/hooks/happykids.wav > /dev/null 2>&1 &' >> /usr/local/.git/hooks/post-commit