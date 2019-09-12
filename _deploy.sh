#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "hugo-academic_4.5" ] && exit 0

git config --global user.email "travis@bot.de"
git config --global user.name "travisbot"

git clone -b gh-pages \
  https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git \
  website-output
cd website-output
git rm -rf *
cp -r ../public/* ./
git add --all *
git commit -m "update homepage (travis build ${TRAVIS_BUILD_NUMBER})" || true
git push -q origin gh-pages
