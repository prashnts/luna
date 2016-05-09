#!/usr/bin/sh
# Luna Lovegood

rm -rf public
git branch -f gh-pages
git checkout gh-pages
git reset --hard origin/master
npm run build
cp -r public/* .
rm -rf public
git add -A .
git commit -a -m 'site update'
git push origin gh-pages --force
git checkout master
git rev-parse --abbrev-ref HEAD
