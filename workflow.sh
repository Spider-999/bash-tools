#!/bin/bash

GIT=`which git`

if [ -z "$GIT" ]; then
  echo "git is not installed, install git and try again."
  exit 1
fi

cp -r org/roam/*.org Notes
echo "------------------------------------------------------------"
echo "copied new files to Notes"
echo "------------------------------------------------------------"
cd Notes
# ${GIT} status
${GIT} pull origin main
echo "------------------------------------------------------------"
${GIT} add *.org
${GIT} commit -m "new notes added"
echo "------------------------------------------------------------"
${GIT} push origin main
echo "------------------------------------------------------------"
