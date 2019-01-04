#!/bin/bash
#
# Release a new version of ensmallen.
#
# Arguments:
#   $ release-ensmallen.sh <major> <minor> <patch> [<name>]
#
# This should be run from the root of the repository.
# Be sure to commit a finished HISTORY.md first!

if [ "$#" -lt 3 ]; then
  echo "At least three arguments required!";
  echo "$ release-ensmallen.sh <major> <minor> <patch> [<name>]";
  exit 1;
fi

if [ "$#" -gt 4 ]; then
  echo "Too many arguments!"
  echo "$ release-ensmallen.sh <major> <minor> <patch> [<name>]";
  exit 1;
fi

lines=`git diff | wc -l`;
if [ "$lines" != "0" ]; then
  echo "git diff returned a nonzero result!"
  git diff
  exit 1;
fi

MAJOR=$1;
MINOR=$2;
PATCH=$3;

sed -i 's/ENS_VERSION_MAJOR[ ]*[0-9]*$/ENS_VERSION_MAJOR '$MAJOR'/' include/ensmallen_bits/ens_version.hpp;
sed -i 's/ENS_VERSION_MINOR[ ]*[0-9]*$/ENS_VERSION_MINOR '$MINOR'/' include/ensmallen_bits/ens_version.hpp;
sed -i 's/ENS_VERSION_PATCH[ ]*[0-9]*$/ENS_VERSION_PATCH '$PATCH'/' include/ensmallen_bits/ens_version.hpp;

if [ "$#" -eq "4" ]; then
  sed -i 's/ENS_VERSION_NAME[ ]*\".*\"$/ENS_VERSION_NAME \"'"$4"'\"/' include/ensmallen_bits/ens_version.hpp;
fi

git pull
git add include/ensmallen_bits/ens_version.hpp;
git commit -m "Update and release version $MAJOR.$MINOR.$PATCH.";
git tag ensmallen-$MAJOR.$MINOR.$PATCH;
git push origin ensmallen-$MAJOR.$MINOR.$PATCH;
git push origin master;

git clone https://github.com/mlpack/ensmallen.org /tmp/ensmallen.org/;
git archive --prefix=ensmallen-$MAJOR.$MINOR.$PATCH/ ensmallen-$MAJOR.$MINOR.$PATCH | gzip > /tmp/ensmallen.org/files/ensmallen-$MAJOR.$MINOR.$PATCH.tar.gz;
cd /tmp/ensmallen.org/;
git add files/ensmallen-$MAJOR.$MINOR.$PATCH.tar.gz;
git commit -m "Release version $MAJOR.$MINOR.$PATCH.";
git push origin;
cd -
