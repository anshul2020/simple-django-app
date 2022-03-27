#!/usr/bin/env bash
# start-app.sh

cd /django/user-data-app
python manage.py migrate
python manage.py runserver 0.0.0.0:8000