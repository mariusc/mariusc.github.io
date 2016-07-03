#!/usr/bin/env bash

if [ "${TRAVIS_PULL_REQUEST}" != "false" ]; then
    echo "Not deploying pull request."
    exit
fi

git config --global user.name "Travis CI"
git config --global user.email "constantinescu.marius+travis@gmail.com"
git clone https://mariusc:${GH_TOKEN}@github.com/mariusc/mariusc.github.io out
cd out
git checkout master || git checkout --orphan master
cd ..
rm -rf out/**/* || exit 0
cp -R build/* out
# ls
cd out
# ls
# git log
# git status
git add .
# git config --list
git commit -am "Automated deploy to GitHub Pages"
git push origin master