#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# place .nojekyll to bypass Jekyll processing
echo > .nojekyll

# copy LICENSE and README from parent directory
cp ../LICENSE .
cp ../README_deploy.md ./README.md

# for when i own the domain name
# echo 'lewardo.dev' > CNAME

# initialise git if not present, checkout to main branch, add all changes and commit with timestamp
git init
git checkout -B main
git add -A
git commit -m "deploy $(date +%d%m%y_%H%M%S)"

# push to lewardo.github.io repo
git push -f https://github.com/lewardo/lewardo.github.io.git main

# return to parent directory
cd -