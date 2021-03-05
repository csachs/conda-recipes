#!/bin/bash

# by Christian C. Sachs 2021

if [[ "$@" == "" ]]; then
    echo "Use this script to build meta.yaml s in a transient Docker container.";
    echo "Specify one or more meta.yaml as arguments (multiple e.g. for dependent builds)"
    echo "Packages will be placed in the current working directory."
    exit 1
fi


METAMOUNT=""

i=0

for metayaml in $@;
    do 
    METAMOUNT="$METAMOUNT --volume `pwd`/$metayaml:/build/$i/meta.yaml:ro"
    ((i=i+1))
done

GID="${GID:-`id -g`}"

docker run --tty --interactive --rm --volume "`pwd`:/output" $METAMOUNT --workdir /build --entrypoint /bin/bash continuumio/miniconda3:4.9.2 \
    -c "conda install -y conda-build conda-verify; for d in *; do conda build \$d; done; find /opt/conda/conda-bld -name '*.tar.bz2' -exec install -m 664 -o $UID -g $GID {} /output \;"
