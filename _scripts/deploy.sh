#!/bin/sh

cp LICENSE _site/

cd _site
git init
git config user.name "Travis CI"
git config user.email "travis@travis-ci.org"
git add --all
git commit --message "Auto deploy from Travis CI build $TRAVIS_BUILD_NUMBER"
git remote add deploy https://$GH_TOKEN@github.com/RubyOcelot/RubyOcelot.github.io.git 
git push --force deploy master 