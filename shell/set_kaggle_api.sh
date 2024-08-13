#!/bin/bash
mkdir -p ~/.kaggle/
cp {{cookiecutter.competition_name}}/kaggle.json ~/.kaggle/
chmod 600 ~/.kaggle/kaggle.json

pip install kaggle