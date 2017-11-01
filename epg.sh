#!/bin/bash

cd /data/legalfreeiptv
git pull

/data/epg/.wg++/run.sh > /data/legalfreeiptv/wgrun.log

#wget https://www.teleguide.info/download/new3/xmltv.xml.gz
#gunzip xmltv.xml.gz
#rm guide.xml
#mv xmltv.xml guide.xml

git add guide.xml
git add wgrun.log
git commit -m "update epg"
git push -u origin master
