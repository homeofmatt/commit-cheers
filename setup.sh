#!/bin/sh
ROOT_DIR=`git rev-parse --show-toplevel`
cd $ROOT_DIR/.git/hooks
curl -O https://raw.githubusercontent.com/homeofmatt/commit-cheers/master/happykids.wav

cat << EOF >> $ROOT_DIR/.git/hooks/post-commit
#!/bin/sh
toplevel_path=\`git rev-parse --show-toplevel\`
afplay -v 0.1 \$toplevel_path/.git/hooks/happykids.wav > /dev/null 2>&1 &
EOF

chmod 755 $ROOT_DIR/.git/hooks/post-commit
cd -