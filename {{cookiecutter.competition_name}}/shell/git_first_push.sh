#!/bin/bash
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/sinchir0/{{cookiecutter.competition_name}}.git
git push origin master
