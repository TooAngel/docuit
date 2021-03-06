# Docuit

[![Build Status](https://travis-ci.org/TooAngel/docuit.svg?branch=master)](https://travis-ci.org/TooAngel/docuit)
[![Dependency Status](https://www.versioneye.com/user/projects/57265586a0ca35004baf713c/badge.svg?style=flat)](https://www.versioneye.com/user/projects/57265586a0ca35004baf713c)

Docuit is a tool which makes sure your README stays up to date
and simplifies getting the needed parts out of the README.

When working with multiple repositories, maybe different languages, the steps
to `build`, `test`, `run` and `deploy` needs to be fetched to use the source.
In good cases with a proper documentation it is sometimes tedious to find that
over and over again.

Docuit parses the README for the needed part prints them out ord can execute
the steps right away.  

 - `docuit check` to make sure all necessary parts exist and prints out what
   is missing.
 - `docuit build|test|run|deploy` Prints the content of the section.
 - `--exec` flag will execute the steps.
 
Using docuit makes sure all repositories have a similar README structure, simplifies
using of the code and with the right setup can also simplify the continues deploy
process: `docuit deploy --exec`.
 


## Build

`pip install -r requirements.txt`

## Test

`flake8 *.py`

## Run

`docuit`

## Deploy

`python setup.py sdist upload`
