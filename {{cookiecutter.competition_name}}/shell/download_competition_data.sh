#!/bin/bash
kaggle competitions download {{cookiecutter.competition_name}} -p data
sudo apt-get install unzip
unzip data/{{cookiecutter.competition_name}}.zip -d data
