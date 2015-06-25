
PYTHON=/usr/bin/env python3
APP?=match
NEW_APP?=match

.PHONY: run sync migrate makemigrations


run:
		$(PYTHON) manage.py runserver

makemigrations:
		$(PYTHON) manage.py makemigrations $(APP)

migrate:
		$(PYTHON) manage.py migrate

sync: migrate
		$(PYTHON) manage.py syncdb

newapp:
		$(PYTHON) manage.py startapp $(NEW_APP)