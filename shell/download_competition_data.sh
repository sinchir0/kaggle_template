#!/bin/bash
mkdri data
kaggle competitions download {{cookiecutter.competition_name}} -p data
unzip data/{{cookiecutter.competition_name}}.zip -d data