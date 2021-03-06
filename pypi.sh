#!/bin/bash
export VERSION=$(date "+%Y%m%d%H%M")
sed -i "s/99.0/99.0.$VERSION/" setup.py
python setup.py bdist_wheel
twine upload --repository-url https://upload.pypi.org/legacy/ -u $PYPI_USERNAME -p $PYPI_PASSWORD --skip-existing dist/*
