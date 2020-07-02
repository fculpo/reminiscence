#! /bin/bash

python manage.py migrate
python manage.py createdefaultsu
python manage.py collectstatic --no-input

if [ ! -d '/usr/src/reminiscence/static/nltk_data' ]; then
    echo 'wait..downloading..nltk_data'
    python manage.py nltkdownload
fi
