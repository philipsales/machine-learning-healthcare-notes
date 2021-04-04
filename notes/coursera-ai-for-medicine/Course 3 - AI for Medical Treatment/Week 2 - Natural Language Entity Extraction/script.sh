#!/bin/bash

tar -cvzf R.tar.gz R

cat nih.tar.gz.* > nih.tar.gz
wait
tar -xzvf nih.tar.gz nih

#splilt
tar cvzf - nih_new/ | split --bytes=100MB - nih_new.backup.tar.gz.
#merge 
cat nih_new.backup.tar.gz.* | tar xzvf -