echo ========================================
echo project-directory-name-01
echo ========================================
cd project-dir/
git checkout master
git pull --all --prune --force
rm -rf node_modules
npm install
npm run build
cd ..

echo ========================================
echo project-directory-name-02
echo ========================================
cd project-dir-02/
git checkout master
git pull --all --prune --force
rm -rf node_modules
npm install
npm run build
cd ..

