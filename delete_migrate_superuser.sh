#!/usr/bin/env bash
cd ~/PycharmProjects/aerin/
rm db.sqlite3
find ~/PycharmProjects/drf/snippets/migrations/ -name "0*" -exec rm {} \;
python3.6 manage.py makemigrations
python3.6 manage.py migrate
echo "from django.contrib.auth.models import User; User.objects.filter(email='admin@example.com').delete(); User.objects.create_superuser('admin', 'admin@example.com', 'password123')" | python3.6 manage.py shell