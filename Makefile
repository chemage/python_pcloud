# Manage virtual environment.
# Author: Marcel Gerber, me@marcelgerber.ch
# Date: October 2023

SHELL := /bin/bash

install_venv:
	python -m venv .venv
	source .venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt

remove_venv:
	rm -rf .venv

clean:
	find . -name __pycache__ -type d -print0 | xargs -r0 rm -rf
	find . -name build -type d -print0 | xargs -r0 rm -rf
