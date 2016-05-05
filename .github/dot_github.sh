#!/usr/bash
VERSION="1.0"
CURRENT=`pwd`
F='atg_gzip.zip'
cd /tmp
curl -Lo $F https://github.com/Harvard-ATG/.github/archive/master.zip
unzip -o $F
cp -R .github-master $CURRENT/.github
cd $CURRENT
git add .github
git commit .github -m "Updated ATG github templates to $VERSION."
