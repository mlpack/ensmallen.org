#!/bin/sh
#
# This can be used to build the ensmallen website.  It assumes jekyll is
# installed and set up correctly.
#
# Before using Jekyll, this first unpacks the most recent documentation from the
# most recent release of ensmallen that is available in the files/ directory.

ensmallen_newest=`ls files/ensmallen-*.tar.gz | sort | tail -1`;
ensmallen_dir=`basename "$ensmallen_newest" .tar.gz`;
tar -xf "$ensmallen_newest" $ensmallen_dir/doc/optimizers.md
tar -xf "$ensmallen_newest" $ensmallen_dir/doc/function_types.md
tar -xf "$ensmallen_newest" $ensmallen_dir/HISTORY.md

mv $ensmallen_dir/doc/optimizers.md optimizers.md
mv $ensmallen_dir/doc/function_types.md function_types.md
mv $ensmallen_dir/HISTORY.md history.md

jekyll b
