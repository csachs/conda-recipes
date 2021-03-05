# conda-recipes

These are some recipes for the [conda](https://conda.io/docs/) (not just) Python package manager, most results which will be available via my [Anaconda Cloud](https://anaconda.org) [channel](https://anaconda.org/csachs/repo).

You could use them via:
```
conda config --add channels csachs
``` 

Most of the recipes here are transient and will eventually (when the projects have reached maturity and I find the time) be submitted to [conda-forge](https://conda-forge.org/) or [bioconda](https://bioconda.github.io/).

I will remove recipes here, once they are in these larger channels.

## `conda-build-docker.sh`

The `conda-build-docker.sh` script is a little helper to run a build isolated in a Docker container.
