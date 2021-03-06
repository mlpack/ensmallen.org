#!/bin/sh
#
# This can be used to build the ensmallen website.  It assumes jekyll is
# installed and set up correctly.
#
# Before using Jekyll, this first unpacks the most recent documentation from the
# most recent release of ensmallen that is available in the files/ directory.

if [ "$#" -ne 1 ]; then
  echo "Argument required: directory to build website into!";
  exit 1;
fi

ensmallen_newest=`ls files/ensmallen-*.tar.gz | grep -v 'ensmallen-latest.tar.gz' | sort | tail -1`;
ensmallen_dir=`basename "$ensmallen_newest" .tar.gz`;
tar -xf "$ensmallen_newest" $ensmallen_dir/doc/optimizers.md;
tar -xf "$ensmallen_newest" $ensmallen_dir/doc/function_types.md;
tar -xf "$ensmallen_newest" $ensmallen_dir/doc/callbacks.md;
tar -xf "$ensmallen_newest" $ensmallen_dir/HISTORY.md;

mv $ensmallen_dir/doc/optimizers.md optimizers.md;
mv $ensmallen_dir/doc/function_types.md function_types.md;
mv $ensmallen_dir/doc/callbacks.md callbacks.md;
mv $ensmallen_dir/HISTORY.md history.md;

ensmallen_file=`basename "$ensmallen_newest"`;
sed -i 's|\[ensmallen-[0-9]*\.[0-9]*\.[0-9]*.tar.gz\](files/ensmallen-[0-9]*\.[0-9]*\.[0-9]*\.tar\.gz)|['$ensmallen_file'](files/'$ensmallen_file')|' index.md

mkdir tmp_site;
mkdir old_site;
bundle exec jekyll clean \
    && bundle exec jekyll b -d tmp_site/ -b . \
    && mv "$1/"* old_site/ \
    && mv tmp_site/* "$1/" \
    && rm -rf tmp_site old_site;
