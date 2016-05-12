#!/usr/bin/env python

from distutils.core import setup

from setuptools import find_packages

setup(
    name='docuit',
    version='0.1',
    description='Read specific parts from README.md files',
    author='Tobias Wilken',
    author_email='tooangel@tooangel.de',
    license='AGPL',
    entry_points={
        'console_scripts': [
            'docuit = docuit.__main__:main'
        ]
    },
    packages=find_packages(),
    install_requires=['docopt>=0.6.2'],
    url='https://github.com/TooAngel/docuit'
)
