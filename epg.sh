#!/bin/bash

cd /data/legalfreeiptv
git pull
rm guide.xml.bak
mv guide.xml guide.xml.bak

/data/epg/.wg++/run.sh > /data/legalfreeiptv/wgrun.log

wget https://www.teleguide.info/download/new3/xmltv.xml.gz
gunzip xmltv.xml.gz
mv guide.xml guide.xml.wg
mv xmltv.xml guide.xml.tg
cp guide.xml.tg guide.xml

git add guide.xml
git add guide.xml.wg
git add guide.xml.tg
git add guide.xml.bak
git add wgrun.log
git commit -m "update epg"
git push -u origin master
