#!/bin/bash

GIT=`which git`

cp -r org/roam/*.org Notes
echo "copied new files to Notes"
cd Notes
# ${GIT} status
${GIT} pull origin main
${GIT} add *.org
${GIT} commit -m "new notes added"
${GIT} push origin main
