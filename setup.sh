#!/bin/bash

echo 'Now installing pipenv...'
pip install pipenv
echo 'pipenv is installed!'

export PIPENV_VENV_IN_PROJECT=true
echo 'Now creating virtualenv'
pipenv install --dev --python 3.7
echo 'virtualenv is created!'

shopt -s expand_aliases
source .venv/bin/activate
# Add custom installation on virtualenv activated