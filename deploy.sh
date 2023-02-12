#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# place .nojekyll to bypass Jekyll processing
echo > .nojekyll

# copy LICENSE and README from directory
cp ../LICENSE .
cp ../README_deploy.md ./README.md

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git checkout -B main
git add -A
git commit -m "deploy $(date +%d%m%y_%H%M%S)"

# if you are deploying to https://<USERNAME>.github.io
git push -f https://github.com/lewardo/lewardo.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

cd -