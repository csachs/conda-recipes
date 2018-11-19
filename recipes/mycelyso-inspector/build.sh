#!/bin/bash
cd mycelyso_inspector/static
bower install
cd ../..
$PYTHON -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv
