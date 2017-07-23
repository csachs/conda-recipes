#!/bin/bash
cd mycelyso_inspector/static
bower install
cd ../..
python setup.py install --single-version-externally-managed --record record.txt
