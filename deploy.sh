set -e

npm run build

cd dist

echo > .nojekyll

git init
git checkout -B main
git add -A
git commit -m 'deploy'

git push -f git@github.com:Esaucey/weather-app-2.0.git main:gh-pages

cd -