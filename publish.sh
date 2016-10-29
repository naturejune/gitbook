#!/bin/sh

gitbook build
git co gh-pages
cp -r _book/* .
git add .
git ci -m "update"
git push origin gh-pages
git co master